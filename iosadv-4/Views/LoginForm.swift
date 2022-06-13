//
//  LoginForm.swift
//  iosadv-4
//
//  Created by Dmitrii Lobanov on 11.06.2022.
//

import SwiftUI
 


struct LoginForm: View {
    
    enum Field: Hashable {
        case username
        case password
    }
    
    @State private var showAlert = false
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var successLogin: Bool? = nil
    @FocusState private var focusedField: Field?
    
    var body: some View {
     
                VStack(spacing: 20) {
                    
                    VStack(spacing: 100) {
                        
                        Image("logo")
                            .resizable()
                            .frame(width: 100, height: 100)
                        
                        VStack(spacing: 0) {
                            
                            TextField("Email or phone (введите 123)", text: $username)
                                .padding()
                                .ignoresSafeArea(.keyboard, edges: .bottom)
                                .submitLabel(.done)
                                .onSubmit {
                                    focusedField = .password
                                }
                                .focused($focusedField, equals: .username)
                            
                            Divider().frame(height: 1).background(Color("TFBorderColor"))
                            
                            SecureField("Password (введите 123)", text: $password)
                                .padding()
                                .ignoresSafeArea(.keyboard, edges: .bottom)
                                .focused($focusedField, equals: .password)
                                .submitLabel(.done)
                        }
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("TFBorderColor"), style: StrokeStyle(lineWidth: 1.0)))
                    }
                    
                    NavigationLink(destination: BioAuthView(), tag: true, selection: $successLogin) {}
                    
                    Button {
                        if LoginInspector.shared.loginSuccess(login: username, password: password) {
                            successLogin = true
                            UserDefaults.standard.set(true, forKey: "userLoginSuccess")

                        } else {
                            successLogin = false
                            showAlert = true
                        }
                    } label: {
                        HStack {
                            Spacer()
                            Text("Вход")
                            Spacer()
                          }
                    }
                    .padding()
                    .contentShape(Rectangle())
                    .background(Color("ButtonColor"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .alert("Неверные данные авторизации", isPresented: $showAlert) {
                        Button("OK", role: .cancel) { } }
                    
                    Spacer()
                }
                .padding(EdgeInsets(top: 10, leading: 16, bottom: 0, trailing: 16))
        }
}


//
//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginForm()
//    }
//}
