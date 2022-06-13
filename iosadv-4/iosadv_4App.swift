//
//  iosadv_4App.swift
//  iosadv-4
//
//  Created by Dmitrii Lobanov on 16.05.2022.
//

import SwiftUI

@main
struct iosadv_4App: App {
    var body: some Scene {
        WindowGroup {
            
            ContentView()
                .onAppear {
                    
                    // MARK: Авторизация по биометрии
                    /*
                     Выполняется при каждом запуске приложения (при выполненнии условий:
                     - пользователь успешно авторизовался по логин/паролю
                     - пользователь активировал авторизацию по биометрии
                     */
                    
                    print("---------------------------")
                    print("userConfirmBioAuth", UserDefaults.standard.bool(forKey: "userConfirmBioAuth"))
                    print("userLoginSuccess", UserDefaults.standard.bool(forKey: "userLoginSuccess"))
                    print("userBioSuccess",UserDefaults.standard.bool(forKey: "userBioSuccess"))
                    print("userCanceledBioAuth",UserDefaults.standard.bool(forKey: "userCanceledBioAuth"))
                    print("---------------------------")
                    
                    
//                    guard UserDefaults.standard.bool(forKey: "userLoginSuccess") else { return }
//                    guard UserDefaults.standard.bool(forKey: "userConfirmBioAuth") else { return }
//                    LoginInspector.shared.authWithBio()
                }
        }
    }
}
