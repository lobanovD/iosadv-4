//
//  LoginInspector.swift
//  iosadv-4
//
//  Created by Dmitrii Lobanov on 09.06.2022.
//

import Foundation
import SwiftUI

protocol LoginInspectorProtocol {
    
    func loginSuccess(login: String, password: String) -> Bool
    
}

final class LoginInspector: LoginInspectorProtocol {
    
    static let shared = LoginInspector()
    
    var login: String = "123"
    var password: String = "123"
    
    func loginSuccess(login: String, password: String) -> Bool {
        
        if login == self.login && password == self.password {
            return true
        } else {
            return false
        }
    }
    
}
