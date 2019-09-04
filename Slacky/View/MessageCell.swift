//
//  MessageCell.swift
//  Slacky
//
//  Created by Andras Pal on 04/09/2019.
//  Copyright © 2019 Andras Pal. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    // Outlets
    
    @IBOutlet weak var userImg: CircleImage!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var timeStampLabel: UILabel!
    @IBOutlet weak var messageBodyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//    }
    
    func configureCell(message: Message) {
        messageBodyLabel.text = message.message
        userNameLabel.text = message.userName
        userImg.image = UIImage(named: message.userAvatar)
        userImg.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
    }
    

}
