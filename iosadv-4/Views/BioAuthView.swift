//
//  BioAuthView.swift
//  iosadv-4
//
//  Created by Dmitrii Lobanov on 10.06.2022.
//

import SwiftUI

//class BioAuthClass {
//
//    func createNotify() {
//        NotificationCenter.default.addObserver(self, selector: #selector(reloadData), name: NSNotification.Name(rawValue: "reloadData"), object: nil)
//    }
//
//
//    @objc func reloadData() {
//       let view = BioAuthView()
//
//        view.onAppear {
//            var body: some View {
//                Text("dd")
//            }
//        }
//    }
//
//}


struct BioAuthView: View {
    
    @State private var isBioSuccess = false
    @State private var successResult = false
    @State private var failResult = false
    
    @State private var selection: Bool? = nil
    
   
    let bioAuthNotify = NotificationCenter.default
        .publisher(for: NSNotification.Name("bioAuthResult"))


    var body: some View {
        
        VStack {
        
            Text("")
                .onAppear {
                    print("---------------------------")
                    print("Попытка вызвать авторизацию по биометрии")
                    print("userConfirmBioAuth", UserDefaults.standard.bool(forKey: "userConfirmBioAuth"))
                    print("userLoginSuccess", UserDefaults.standard.bool(forKey: "userLoginSuccess"))
                    print("userBioSuccess",UserDefaults.standard.bool(forKey: "userBioSuccess"))
                    print("userCanceledBioAuth",UserDefaults.standard.bool(forKey: "userCanceledBioAuth"))
                    print("---------------------------")
                    
                LoginInspector.shared.authWithBio()
            }
                .onReceive(bioAuthNotify) { _ in
                    
                    selection = UserDefaults.standard.bool(forKey: "userBioSuccess")
                    UserDefaults.standard.set(selection, forKey: "userBioSuccess")
                

                }
            
            NavigationLink(destination: MainView(), tag: true, selection: $selection) { EmptyView() }
            
            NavigationLink(destination: LoginForm(), tag: false, selection: $selection) { EmptyView() }
            

        }
        .navigationBarBackButtonHidden(true)

    }
        
    }
       

//
//struct BioAuthView_Previews: PreviewProvider {
//    static var previews: some View {
//        BioAuthView()
//    }
//}
