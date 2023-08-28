//
//  FacebookButton.swift
//  snackoverflow
//
//  Created by Erbay MAVZER on 28.08.2023.
//

import SwiftUI

private enum StringItems: String {
    case facebookLogin = "Sign In with Facebook"
}


struct FacebookButton: View {
    var onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Image(IconItems.Social.facebook.rawValue)
                Text(StringItems.facebookLogin.rawValue)
                Spacer()
            }
            .tint(.white)
            .background(Color.deepSkyBlue)
        }
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
    }
}
