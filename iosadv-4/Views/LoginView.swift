//
//  LoginView.swift
//  iosadv-4
//
//  Created by Dmitrii Lobanov on 17.05.2022.
//

import SwiftUI

struct LoginView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 20) {
                
                VStack(spacing: 100) {
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    VStack(spacing: 0) {
                        
                        TextField("Email or phone", text: $username)
                            .padding()
                        
                        Divider().frame(height: 1).background(Color("TFBorderColor"))
                        
                        TextField("Password", text: $password)
                            .padding()
                        
                    }
                    .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("TFBorderColor"), style: StrokeStyle(lineWidth: 1.0)))
                }
                
                
                Button(action: {
                    print(username, password)
                }) {
                    Text("Log In")
                        .padding()
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color("ButtonColor"))
                .foregroundColor(.white)
                .cornerRadius(10)
                
                Spacer()
            }
            .padding(EdgeInsets(top: 100, leading: 16, bottom: 0, trailing: 16))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView()
                .previewInterfaceOrientation(.portraitUpsideDown)
            LoginView()
            LoginView()
        }
    }
}