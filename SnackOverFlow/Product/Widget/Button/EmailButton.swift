//
//  EmailButton.swift
//  snackoverflow
//
//  Created by Erbay MAVZER on 28.08.2023.
//

import SwiftUI

struct EmailButton: View {
    var onTap: () -> Void

    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Spacer()
                Text(LocaleKeys.Auth.email.rawValue.locale()).font(.system(size:FontSizes.headline,weight: .semibold))
                Spacer()
            }
                .tint(Color.peach)
                .font(.title3)
                .fontWeight(.black)
                .padding(.all, PagePadding.All.normal.rawValue)
        }
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(.white)
            .cornerRadius(RadiusItems.radius)
    }
}

struct EmailButton_Previews: PreviewProvider {
    static var previews: some View {
        EmailButton{}
    }
}
