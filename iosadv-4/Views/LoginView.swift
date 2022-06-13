////
////  LoginView.swift
////  iosadv-4
////
////  Created by Dmitrii Lobanov on 17.05.2022.
////
//
//import SwiftUI
//
//
//struct LoginView: View {
//
//
//    @State private var successLogin = UserDefaults.standard.bool(forKey: "isLogin")
//    @State private var successBioAuth = UserDefaults.standard.bool(forKey: "isBioAuth")
//    
//
//
//    var body: some View {
//
//        NavigationView {
//
//            if !successLogin && !successBioAuth  {
//                LoginForm()
//            }
//            else {
//                    BioAuthView()
//                }
//
//
//
//                    }
//
//        }
//
//        }
//
//
//
//
////struct LoginView_Previews: PreviewProvider {
////    static var previews: some View {
////        Group {
////            LoginView(popo: popo)
////                .previewInterfaceOrientation(.portrait)
////        }
////    }
////}
