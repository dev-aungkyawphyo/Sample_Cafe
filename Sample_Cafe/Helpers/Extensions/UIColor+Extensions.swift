//
//  UIColor+Extensions.swift
//  Sample_Cafe
//
//  Created by Aung Kyaw Phyo on 03/11/2024.
//

import Foundation
import UIKit

extension UIColor {
    
    static func appColor(_ name: AssetColor) -> UIColor? {
        return UIColor(named: name.rawValue)
    }
    
}
