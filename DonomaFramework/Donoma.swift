//
//  Sample.swift
//  DonomaFramework
//
//  Created by vineeth on 23/08/21.
//

import Foundation
import UIKit
import FBSDKLoginKit
public class DonomaLib {
    public init(){

    }
    public func fbLibraryLogin(currentViewController:UIViewController) -> LoginManagerLoginResult {
        var fbloginresult: LoginManagerLoginResult?
        let fbLoginManager: LoginManager = LoginManager()
        fbLoginManager.logIn(permissions: ["public_profile", "email"], from:currentViewController, handler: { (result, error) -> Void in
            if error == nil {
                fbloginresult = result!

            }
        })
        return fbloginresult!
    }
    public func testing(){
        print("Helloo")
        print("new")
    }
}
