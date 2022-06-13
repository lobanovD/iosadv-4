//
//  LoginInspector.swift
//  iosadv-4
//
//  Created by Dmitrii Lobanov on 09.06.2022.
//

import Foundation
import SwiftUI
import LocalAuthentication

protocol LoginInspectorProtocol {
    
    func loginSuccess(login: String, password: String) -> Bool
    
    func authWithBio()
    
}

final class LoginInspector: LoginInspectorProtocol {
    
    static let shared = LoginInspector()
    
    var login: String = "123"
    var password: String = "123"
    
    let context = LAContext()
    var error: NSError?
    
    // метод проверки логина и пароля
    func loginSuccess(login: String, password: String) -> Bool {
        
        if login == self.login && password == self.password {
            return true
        } else {
            return false
        }
    }
    
    // Метод для подключения FaceID/TouchID авторизации
    func authWithBio() {
        
        // Если пользователь уже отменил авторизацию по биометрии, то игнорируем данный вид авторизации
        guard !UserDefaults.standard.bool(forKey: "userCanceledBioAuth") else { return }
        
        // Обязательные свойства данного метода
        let context = LAContext()
        var error: NSError?
        
        // Проверка, может ли устройство использовать биометрию
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            // Текст для TouchID (текст для FaceID задается в info.plist)
            let reason = "Хотите использовать Touch ID для авторизации?"
            
            // Вызов биометрии
            context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: reason) { success, authenticationError in
                
                print(authenticationError)
                
                // Если метод возвращает ошибку, значит пользователь отказался использовать биометрию, success при этом = false
                if authenticationError != nil {
                    UserDefaults.standard.set(true, forKey: "userCanceledBioAuth")
                    print("Пользователь отказался от биометрии")
                }
                // Пользователь согласился использовать биометрию
                // Успешная авторизация по биометрии
                if success {
                    
                    UserDefaults.standard.set(true, forKey: "userBioSuccess")
                     print("пользователь успешно прошел био авторизацию")
                    // Неудачная авторизация по биометрии
                } else {
                    print("пользователь не прошел био авторизацию")
                    
                    UserDefaults.standard.set(false, forKey: "userBioSuccess")
        
                    UserDefaults.standard.set(false, forKey: "isLogin")

                
                 
                    
                   
                }
                
                DispatchQueue.main.async {
                    NotificationCenter.default.post(name: Notification.Name("bioAuthResult"), object: nil)
                }
                
            }
        }
        
        
        
    }
    
    
    
    
}
