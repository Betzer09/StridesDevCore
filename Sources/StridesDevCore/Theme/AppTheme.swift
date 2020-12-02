//
//  File.swift
//  
//
//  Created by Austin Betzer on 12/1/20.
//

import Foundation
import UIKit
import SwiftUI

public struct AppTheme {
    
    /// The available App font sizes that should be used in the app.
    public enum FontSize: CGFloat {
        /// Largest
        case HLarge = 36
        
        // Headers
        case H1 = 32
        case H2 = 24
        case H3 = 20
        case H4 = 18
        /// Includes Paragraph & Body, typically default font size of 16
        case Regular = 16
        case Small = 14
        case Tiny = 12
        
    }
    
    /// The apps fonts, by default all font sizes are set to 16
    public struct Fonts {
        static let internBold = UIFont.interBold(ofSize: .Regular)
        static let internRegular = UIFont.interRegular(ofSize: .Regular)
        static let internSemiBold = UIFont.interSemiBold(ofSize: .Regular)
    }
    
    
    public struct Colors {
        static var primaryColor = UIColor(named: "PrimaryColor")!
    }
}

extension UIColor {
    /// Converts UIColor to a color type
    public var color: Color {
        return Color(self)
    }
}

