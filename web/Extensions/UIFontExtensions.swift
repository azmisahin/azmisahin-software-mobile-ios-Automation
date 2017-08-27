//
//  UIFontExtensions.swift
//  web
//
//  Created by Azmi SAHIN on 27/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

// MARK: - Requared
import Foundation
import UIKit

// MARK: - UI Font Extention
extension UIFont {
    
    /// Init
    
    /// Extra Small
    class func extraSmall() -> UIFont
    {
        return UIFont(name: "HelveticaNeue-Light", size: 9)!
    }
    
    /// Extra Small Bold
    class func extraSmallBold() -> UIFont
    {
        return UIFont(name: "HelveticaNeue", size: 9)!
    }
    
    /// Small
    class func small() -> UIFont
    {
        return UIFont(name: "HelveticaNeue-Light", size: 11)!
    }
    
    /// Small Bold
    class func smallBold() -> UIFont
    {
        return UIFont(name: "HelveticaNeue", size: 11)!
    }
    
    /// Default
    class func defult() -> UIFont
    {
        return UIFont(name: "HelveticaNeue-Light", size: 14)!
    }
    
    /// Default Bold
    class func defultBold() -> UIFont
    {
        return UIFont(name: "HelveticaNeue", size: 16)!
    }
    
    /// Large
    class func large() -> UIFont
    {
        return UIFont(name: "HelveticaNeue-Light", size: 17)!
    }
    
    /// Large Bold
    class func largeBold() -> UIFont
    {
        return UIFont(name: "HelveticaNeue", size: 17)!
    }
}
