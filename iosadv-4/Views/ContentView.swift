//
//  ContentView.swift
//  iosadv-4
//
//  Created by Dmitrii Lobanov on 16.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectionTabView = "login"
    
    var body: some View {
        TabView(selection: $selectionTabView) {
            
            FeedView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Feed")
                }
            
            LoginView()
                 .tabItem {
                    Image(systemName: "person.fill")
                    Text("Login")
                 }
                 .tag("login")
            
            PlayerView()
                 .tabItem {
                    Image(systemName: "music.note")
                    Text("Player")
                  }
            
            VideoView()
                 .tabItem {
                    Image(systemName: "video")
                    Text("Player")
                  }
            
            RecorderView()
                 .tabItem {
                    Image(systemName: "mic.fill")
                    Text("Player")
                  }
     
        }
        .onAppear {
                let appearance = UITabBarAppearance()
                appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
                appearance.backgroundColor = UIColor(named: "TabBarColor")
            
                UITabBar.appearance().standardAppearance = appearance
               
                UITabBar.appearance().scrollEdgeAppearance = appearance
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
