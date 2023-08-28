//
//  LocaleKeys.swift
//  snackoverflow
//
//  Created by Erbay MAVZER on 28.08.2023.
//

import SwiftUI


struct LocaleKeys{
    enum Auth:String{
        case facebook = "signInFacebook"
        case google = "signInGoogle"
        case apple = "signInApple"
        case email = "signupWithEmail"
 }
}

extension String {
    /// It will localize any string from Localizable strings
    /// - Returns: Localized value
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
