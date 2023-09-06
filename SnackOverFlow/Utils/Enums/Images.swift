//
//  Images.swift
//  snackoverflow
//
//  Created by Erbay MAVZER on 28.08.2023.
//

import Foundation
import SwiftUI

struct Images {
    enum Authentication : String {
        case login = "wolcano"
        case welcome = "img_juice"
    }
}

extension String {
    /// String path to image
    /// - Returns: Related Image UI from image assets
    func image() -> Image {
        return Image(self)
    }
}
