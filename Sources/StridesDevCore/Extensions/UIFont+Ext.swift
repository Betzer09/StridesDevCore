//
//  File.swift
//  
//
//  Created by Austin Betzer on 12/1/20.
//

import Foundation
import UIKit
import SwiftUI

/**
 This extension should hold all of the available fonts
 */
extension UIFont {
    // MARK: - Inter Fonts(Apps new Main font)
    class func interBold(ofSize fontSize: AppTheme.FontSize) -> UIFont {
        guard let font =  UIFont(name: "Inter-Bold", size: fontSize.rawValue) else {
            return UIFont.systemFont(ofSize: fontSize.rawValue)
        }
        return font
    }
    
    class func interRegular(ofSize fontSize: AppTheme.FontSize) -> UIFont {
        guard let font =  UIFont(name: "Inter-Regular", size: fontSize.rawValue) else {
            return UIFont.systemFont(ofSize: fontSize.rawValue)
        }
        return font
    }
    
    class func interSemiBold(ofSize fontSize: AppTheme.FontSize) -> UIFont {
        guard let font = UIFont(name: "Inter-SemiBold", size: fontSize.rawValue) else {
            return UIFont.systemFont(ofSize: fontSize.rawValue)
        }
        return font
    }
    
    public var font: Font {
        Font(self)
    }
}
