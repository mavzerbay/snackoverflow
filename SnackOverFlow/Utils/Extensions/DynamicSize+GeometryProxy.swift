//
//  DynamicSize+GeometryProxy.swift
//  snackoverflow
//
//  Created by Erbay MAVZER on 28.08.2023.
//

import SwiftUI


extension GeometryProxy{
    /// Dynamic Height by device
    /// - Parameter height: Percent value
    /// - Returns: Calculated value for device height
    func dh(height:Double) -> Double {
        return size.height * height
    }
    
    /// Dynamic Width by device
    /// - Parameter width: Percent value
    /// - Returns: Calculated value for device width
    func dw(width:Double) -> Double {
        return size.width * width
    }
}
