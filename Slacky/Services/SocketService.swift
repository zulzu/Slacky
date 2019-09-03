//
//  SocketService.swift
//  Slacky
//
//  Created by Andras Pal on 03/09/2019.
//  Copyright © 2019 Andras Pal. All rights reserved.
//

import UIKit
import SocketIO

class SocketService: NSObject {
    
    static let instance = SocketService()
    let manager = SocketManager(socketURL: URL(string: BASE_URL)!)
    
    override init() {
        super.init()
    }

    func establishConnection() {
        manager.defaultSocket.connect()
    }
    
    func closeConnection() {
        manager.defaultSocket.disconnect()
    }
    
    func addChannel(channelName: String, channelDescription: String, completion: @escaping CompletionHandler) {
        manager.defaultSocket.emit("newChannel", channelName, channelDescription)
        completion(true)
    }
    
    func getChannel(completion: @escaping CompletionHandler) {
        manager.defaultSocket.on("channelCreated") { (dataArray, ack) in
            guard let channelName = dataArray[0] as? String else { return }
            guard let channelDescription = dataArray[1] as? String else { return }
            guard let id = dataArray[2] as? String else { return }
            let newChannel = Channel(channelTitle: channelName, channelDescription: channelDescription, id: id)
            MessageService.instance.channels.append(newChannel)
            completion(true)
        }
    }
    
    
    
    
    
}
