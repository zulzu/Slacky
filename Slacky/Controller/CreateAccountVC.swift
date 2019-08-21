//
//  CreateAccountVC.swift
//  Slacky
//
//  Created by Andras Pal on 21/08/2019.
//  Copyright © 2019 Andras Pal. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

}
