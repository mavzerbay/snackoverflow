//
//  WelcomeView.swift
//  snackoverflow
//
//  Created by Erbay MAVZER on 28.08.2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image(Images.juice.rawValue).resizable()
            Color.black.opacity(0.3)
            VStack {
                Image(Icons.appLogo.rawValue)

                FacebookButton(onTap:{}).padding(Edge.Set.top,40)
                    
            }.padding(.paddingAll)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().statusBarHidden()
    }
}
