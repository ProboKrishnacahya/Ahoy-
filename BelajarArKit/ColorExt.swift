//
//  ColorExt.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 14/08/23.
//

import Foundation
import UIKit



extension UIColor{
    static func random() -> UIColor {
        UIColor(displayP3Red: Double.random(in: 0...1), green:  Double.random(in: 0...1), blue:  Double.random(in: 0...1), alpha: 1)
    }
}
