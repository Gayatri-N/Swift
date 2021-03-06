//
//  Constants.swift
//  MyWorkplace
//
//  Created by Gayatri Nagarkar on 10/10/17.
//  Copyright © 2017 JCI. All rights reserved.
//

import Foundation

struct Constants {
    
    // MARK: -
    // MARK: Storyboard names -
    static let kStoryboard_Login = "Login"
    static let kStoryboard_Main = "Main"
    
    // MARK: -
    // MARK: View Controller Identifiers -
    static let kViewController_Login = "LoginViewController"
    static let kViewController_DashboardNavigation = "DashboardVCNav"
    
    // MARK: -
    // MARK: Alert messages -
    static let kAlert_InvalidCredentials = "Invalid Username or Password."
    static let kAlert_BlankCredentials = "Please enter Username and Password."
    static let kAlert_WrongPassword = "Password should be at least 8 characters long. It should contain at least one lower case letter, one upper case letter, one special character."
    static let kAlert_ContainsWhitespace = "Username or password should not contain any whitespace."
    static let kAlert_OK = "OK"
}

