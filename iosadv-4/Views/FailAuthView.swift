//
//  FailAuthView.swift
//  iosadv-4
//
//  Created by Dmitrii Lobanov on 12.06.2022.
//

import SwiftUI

struct FailAuthView: View {
    var body: some View {
        Text("Авторизация биометрии не удалась")
            .navigationBarBackButtonHidden(true)
    }
}

struct FailAuthView_Previews: PreviewProvider {
    static var previews: some View {
        FailAuthView()
    }
}
