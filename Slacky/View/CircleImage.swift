//
//  CircleImage.swift
//  Slacky
//
//  Created by Andras Pal on 28/08/2019.
//  Copyright © 2019 Andras Pal. All rights reserved.
//

import UIKit


    @IBDesignable
    class CircleImage: UIImageView {
        
        override func awakeFromNib() {
            setupView()
        }
        
        func setupView() {
            self.layer.cornerRadius = self.frame.width / 2
            self.clipsToBounds = true
        }
        
        override func prepareForInterfaceBuilder() {
            super.prepareForInterfaceBuilder()
            setupView()
        }
        
    }
    

