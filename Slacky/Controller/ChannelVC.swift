//
//  ChannelVC.swift
//  Slacky
//
//  Created by Andras Pal on 20/08/2019.
//  Copyright © 2019 Andras Pal. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    // Outlets
    
    @IBOutlet weak var loginButton: UIButton!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {}
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
    }
    

    @IBAction func loginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    

}
