//
//  MainView.swift
//  iosadv-4
//
//  Created by Dmitrii Lobanov on 09.06.2022.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
            Text("Авторизация прошла успешно!")
                .padding()
                .navigationBarBackButtonHidden(true)
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
