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
    @State private var showingAlert = false
    @State private var successLogin = false
    
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack(spacing: 20) {
                    
                    VStack(spacing: 100) {
                        
                        Image("logo")
                            .resizable()
                            .frame(width: 100, height: 100)
                        
                        VStack(spacing: 0) {
                            
                            TextField("Email or phone (введите 123)", text: $username)
                                .padding()
                            
                            Divider().frame(height: 1).background(Color("TFBorderColor"))
                            
                            SecureField("Password (введите 123)", text: $password)
                                .padding()
                            
                        }
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("TFBorderColor"), style: StrokeStyle(lineWidth: 1.0)))
                    }
                    
                    
                    NavigationLink(destination: MainView(), isActive: $successLogin) { }
                    
                    Button("Log In",  action: {
                        
                        if LoginInspector.shared.loginSuccess(login: username, password: password) {
                            successLogin = true
                        } else {
                            successLogin = false
                            showingAlert = true
                        }
                        
                    })
                    .padding()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(Color("ButtonColor"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .alert("Неверные данные авторизации", isPresented: $showingAlert) {
                        Button("OK", role: .cancel) { } }
                    
                    Spacer()
                }
                .padding(EdgeInsets(top: 100, leading: 16, bottom: 0, trailing: 16))
            }
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView()
                .previewInterfaceOrientation(.portrait)
            
        }
    }
}
