//
//  Constants.swift
//  Slacky
//
//  Created by Andras Pal on 20/08/2019.
//  Copyright © 2019 Andras Pal. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants

let BASE_URL = "https://slackyslackyslackslack.herokuapp.com/"

let URL_REGISTER = "\(BASE_URL)account/register"

let URL_LOGIN = "\(BASE_URL)account/login"

let URL_USER_ADD = "\(BASE_URL)user/add"



// Segues

let TO_LOGIN = "toLogin"

let TO_CREATE_ACCOUNT = "toCreateAccount"

let UNWIND = "unwindToChannel"

let TO_AVATAR_PICKER = "toAvatarPicker"



// User Defaults

let TOKEN_KEY = "token"

let LOGGED_IN_KEY = "loggedIn"

let USER_EMAIL = "userEmail"



// Headers

let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
