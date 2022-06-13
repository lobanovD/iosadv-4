//
//  ContentView.swift
//  iosadv-4
//
//  Created by Dmitrii Lobanov on 16.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    var userConfirmBioAuth = UserDefaults.standard.bool(forKey: "userConfirmBioAuth")
    var userLoginSuccess = UserDefaults.standard.bool(forKey: "userLoginSuccess")
    var userBioSuccess = UserDefaults.standard.bool(forKey: "userBioSuccess")
    var userCanceledBioAuth = UserDefaults.standard.bool(forKey: "userCanceledBioAuth")
    
  
    var body: some View {
        
        NavigationView {
            
            // Если пользователь отказался от биометрии или авторизация по логин/паролю не произведена
            if !userLoginSuccess || userCanceledBioAuth {
                LoginForm()
            }
            // В противном случае пытаемся вызвать авторизацию по биометрии
            else {
                BioAuthView()
            }

        }
        
        
        
    }
    
    
    
    //    var body: some View {
    //
    //        TabView(selection: $selectionTabView) {
    //
    //            FeedView()
    //                .tabItem {
    //                    Image(systemName: "house.fill")
    //                    Text("Feed")
    //                }
    //
    //            LoginView()
    //                 .tabItem {
    //                    Image(systemName: "person.fill")
    //                    Text("Login")
    //                 }
    //                 .tag("login")
    //
    //            PlayerView()
    //                 .tabItem {
    //                    Image(systemName: "music.note")
    //                    Text("Player")
    //                  }
    //
    //            VideoView()
    //                 .tabItem {
    //                    Image(systemName: "video")
    //                    Text("Player")
    //                  }
    //
    //            RecorderView()
    //                 .tabItem {
    //                    Image(systemName: "mic.fill")
    //                    Text("Player")
    //                  }
    //
    //        }
    //        .onAppear {
    //                let appearance = UITabBarAppearance()
    //                appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
    //                appearance.backgroundColor = UIColor(named: "TabBarColor")
    //
    //                UITabBar.appearance().standardAppearance = appearance
    //
    //                UITabBar.appearance().scrollEdgeAppearance = appearance
    //
    //                UserDefaults.standard.set(false, forKey: "isBioAuth")
    //            }
    //    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
