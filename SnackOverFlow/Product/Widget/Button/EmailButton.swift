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
                Text(LocaleKeys.Auth.email.rawValue.locale())
                Spacer()
            }
                .tint(.white)
                .font(.title2)
                .fontWeight(.black)
                .padding(.all, PagePadding.All.normal.rawValue)
        }
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(Color.peach)
            .cornerRadius(RadiusItems.radius)
    }
}

struct EmailButton_Previews: PreviewProvider {
    static var previews: some View {
        EmailButton{}
    }
}
