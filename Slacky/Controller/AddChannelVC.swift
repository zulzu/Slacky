//
//  AddChannelVC.swift
//  Slacky
//
//  Created by Andras Pal on 02/09/2019.
//  Copyright © 2019 Andras Pal. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {
    
    // Outlets
    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var channelDescription: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
    }
    
    @IBAction func createChannelPressed(_ sender: Any) {
        
    }
    
    
    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        nameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedString.Key.foregroundColor : slackyPurplePlaceholder])
        channelDescription.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedString.Key.foregroundColor : slackyPurplePlaceholder])
        
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
}
