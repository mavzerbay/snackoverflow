//
//  FacebookButton.swift
//  snackoverflow
//
//  Created by Erbay MAVZER on 28.08.2023.
//

import SwiftUI

struct FacebookButton: View {
    var onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Image(IconItems.Social.facebook.rawValue)
                Text(LocaleKeys.Auth.facebook.rawValue.locale())
                Spacer()
            }
            .tint(.white)
            .font(.title2)
            .padding(.all, PagePadding.All.normal.rawValue)
        }
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.deepSkyBlue)
        .cornerRadius(RadiusItems.radius)
    }
}

struct FacebookButton_Previews: PreviewProvider {
    static var previews: some View {
        FacebookButton(onTap: {})
    }
}
