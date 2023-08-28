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
            BodyView()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().ignoresSafeArea(.all)
    }
}

private struct BodyView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Image(Icons.appLogo.rawValue)
                Spacer()
                FacebookButton(onTap: { }).padding(Edge.Set.top, 40)
                GoogleButton(onTap: { })
                AppleButton(onTap: { })
                Divider()
                    .background(Color.peach)
                    .frame(width:geometry.dw(width: 0.6),height: DividerViewSize.normal).padding(.all, PagePadding.All.normal.rawValue)
                EmailButton { }
                Spacer().frame(height: geometry.dh(height: 0.1))
            }.padding(.paddingAll)
        }
    }
}
