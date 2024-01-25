//
//  SuperUIThemeExtension.swift
//  iOSDemo2
//
//  Created by bingy on 1/25/24.
//


import UIKit
import DynamicColor

extension UIColor {
    static var colorPrimary: UIColor {
        return .initColor(normal: .primaryColor, dark: primary30)
    }
    
    
    static func initColor(normal: UIColor, dark: UIColor) -> UIColor {
        if #available(iOS 13.0, *){
            return UIColor { (traitCollection) -> UIColor in
                return traitCollection.userInterfaceStyle == .dark ? dark : normal
            }
        } else {
            return normal
        }
    }

}
