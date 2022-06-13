//
//  PlayerView.swift
//  iosadv-4
//
//  Created by Dmitrii Lobanov on 18.05.2022.
//

import SwiftUI

struct PlayerView: View {
    
    @State private var successLogin = UserDefaults.standard.bool(forKey: "isLogin")
    @State private var successBioAuth = UserDefaults.standard.bool(forKey: "isBioAuth")
    
    var body: some View {
        Text("Player View")
            .onAppear {
                print("successLogin - \(UserDefaults.standard.bool(forKey: "isLogin"))")
                print("successBioAuth - \(UserDefaults.standard.bool(forKey: "isBioAuth"))")
            }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
