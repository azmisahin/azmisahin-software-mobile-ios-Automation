//
//  UIColorExtensions.swift
//  web
//
//  Created by Azmi SAHIN on 27/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

// MARK: - Requared
import Foundation
import UIKit

// MARK: - UI Color Extention
extension UIColor
{
    /// Initalize
    ///
    /// UIColor.init(red:int, green:int, blue:int)
    ///
    /// - Parameters: int, int, int
    ///
    /// - Returns: UIColor
    ///
    /// Usage
    ///
    ///     let result = UIColor.init(red:255, green:255, blue:255)
    ///
    /// UI Color Initalize
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    /// Initalize Net Hex
    ///
    /// UIColor.init(netHex:int)
    ///
    /// - Parameters: int
    ///
    /// - Returns: UIColor
    ///
    /// Usage
    ///
    ///     let result = UIColor.init(netHex:0xff)
    ///
    /// UI Color Net Hex nitalize
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
    
    /// Named
    ///
    /// UIColor.named(name:string)
    ///
    /// - Parameters: string
    ///
    /// - Returns: UIColor
    ///
    /// Usage
    ///
    ///     let result = UIColor.named(name:"orange_50")
    ///
    /// UI Color Named Initalize
    class func named(name:String) -> UIColor{
        
        // Define
        let result: UIColor
        
        // Proc
        switch name {
        case "orange_50": result = orange_50(); break;
        case "orange_100": result = orange_100(); break;
        case "orange_200": result = orange_200(); break;
        case "orange_300": result = orange_300(); break;
        case "orange_400": result = orange_400(); break;
        case "orange_500": result = orange_500(); break;
        case "orange_600": result = orange_600(); break;
        case "orange_700": result = orange_700(); break;
        case "orange_800": result = orange_800(); break;
        case "orange_900": result = orange_900(); break;
        default: result = primary(); break;
        }
        
        // Result
        return result
    }
    
    // MARK: - Global Color
    
    /**
     Active
     - Deep Orange
     */
    class func active() -> UIColor
    {
        // Orange
        return UIColor(netHex:0xcc4800)
    }
    
    /**
     Active Clear
     - Deep Orange
     */
    class func activeClear() -> UIColor
    {
        // Orange
        return UIColor(colorLiteralRed: 100, green: 100, blue: 10, alpha: 0.4)
    }
    
    /**
     Brand
     - Grey
     */
    class func brand() -> UIColor
    {
        // Orange
        return UIColor(netHex:0xff9800)
    }
    
    /**
     Active
     - Grey
     */
    class func primary() -> UIColor
    {
        return UIColor(netHex:0x535353)
    }
    
    /**
     Primary / Inverse
     - White
     */
    class func primaryInverse() -> UIColor
    {
        return UIColor(netHex:0xffffff)
    }
    
    /**
     Success
     - Yellow
     */
    class func success() -> UIColor
    {
        return UIColor(netHex:0x118920)
    }
    
    /**
     Info
     - Open Gray
     */
    class func info() -> UIColor
    {
        return UIColor(netHex:0xef6c00)
    }
    
    /**
     Warning
     - Open Gray
     */
    class func warning() -> UIColor
    {
        return UIColor(netHex:0xB71C1C)
    }
    
    /**
     Warning
     - Red
     */
    class func danger() -> UIColor
    {
        return UIColor(netHex:0xe50020)
    }
    
    // Muted
    class func muted() -> UIColor
    {
        return UIColor(netHex:0x636C72)
    }
    
    // Header
    class func header() -> UIColor
    {
        return UIColor(netHex:0xFF6F00)
    }
    
    // MARK: - Red
    
    // Red 50
    class func red_50() -> UIColor
    {
        return UIColor(netHex:0xFFEBEE)
    }
    
    // Red 100
    class func red_100() -> UIColor
    {
        return UIColor(netHex:0xFFCDD2)
    }
    
    // Red 200
    class func red_200() -> UIColor
    {
        return UIColor(netHex:0xEF9A9A)
    }
    
    // Red 300
    class func red_300() -> UIColor
    {
        return UIColor(netHex:0xE57373)
    }
    
    // Red 400
    class func red_400() -> UIColor
    {
        return UIColor(netHex:0xEF5350)
    }
    
    // Red 500
    class func red_500() -> UIColor
    {
        return UIColor(netHex:0xF44336)
    }
    
    // Red 600
    class func red_600() -> UIColor
    {
        return UIColor(netHex:0xE53935)
    }
    
    // Red 700
    class func red_700() -> UIColor
    {
        return UIColor(netHex:0xD32F2F)
    }
    
    // Red 800
    class func red_800() -> UIColor
    {
        return UIColor(netHex:0xC62828)
    }
    
    // Red 900
    class func red_900() -> UIColor
    {
        return UIColor(netHex:0xB71C1C)
    }
    
    // Red A100
    class func red_A100() -> UIColor
    {
        return UIColor(netHex:0xFF8A80)
    }
    
    // Red A200
    class func red_A200() -> UIColor
    {
        return UIColor(netHex:0xFF5252)
    }
    
    // Red A400
    class func red_A400() -> UIColor
    {
        return UIColor(netHex:0xFF1744)
    }
    
    // Red A700
    class func red_A700() -> UIColor
    {
        return UIColor(netHex:0xD50000)
    }
    
    // MARK: - Deep Purple
    
    // Deep Purple 50
    class func deep_purple_50() -> UIColor
    {
        return UIColor(netHex:0xEDE7F6)
    }
    
    // Deep Purple 100
    class func deep_purple_100() -> UIColor
    {
        return UIColor(netHex:0xD1C4E9)
    }
    
    // Deep Purple 200
    class func deep_purple_200() -> UIColor
    {
        return UIColor(netHex:0xB39DDB)
    }
    
    // Deep Purple 300
    class func deep_purple_300() -> UIColor
    {
        return UIColor(netHex:0x9575CD)
    }
    
    // Deep Purple 400
    class func deep_purple_400() -> UIColor
    {
        return UIColor(netHex:0x7E57C20)
    }
    
    // Deep Purple 500
    class func deep_purple_500() -> UIColor
    {
        return UIColor(netHex:0x673AB7)
    }
    
    // Deep Purple 600
    class func deep_purple_600() -> UIColor
    {
        return UIColor(netHex:0x5E35B1)
    }
    
    // Deep Purple 700
    class func deep_purple_700() -> UIColor
    {
        return UIColor(netHex:0x512DA8)
    }
    
    // Deep Purple 800
    class func deep_purple_800() -> UIColor
    {
        return UIColor(netHex:0x4527A0)
    }
    
    // Deep Purple 900
    class func deep_purple_900() -> UIColor
    {
        return UIColor(netHex:0x311B92)
    }
    
    // Deep Purple A100
    class func deep_purple_A100() -> UIColor
    {
        return UIColor(netHex:0xB388FF)
    }
    
    // Deep Purple A200
    class func deep_purple_A200() -> UIColor
    {
        return UIColor(netHex:0x7C4DFF)
    }
    
    // Deep Purple A400
    class func deep_purple_A400() -> UIColor
    {
        return UIColor(netHex:0x651FFF)
    }
    
    // Deep Purple A700
    class func deep_purple_A700() -> UIColor
    {
        return UIColor(netHex:0x6200EA)
    }
    
    // MARK: - Light Blue
    
    // Light Blue 50
    class func light_blue_50() -> UIColor
    {
        return UIColor(netHex:0xE1F5FE)
    }
    
    // MARK: - Green
    
    // Green 50
    class func green_50() -> UIColor
    {
        return UIColor(netHex:0xE8F5E9)
    }
    
    // MARK: - Yellow
    
    // Yellow 50
    class func yellow_50() -> UIColor
    {
        return UIColor(netHex:0xFFFDE7)
    }
    
    // MARK: - Deep Orange
    
    // Deep Orange 50
    class func deep_orange_50() -> UIColor
    {
        return UIColor(netHex:0xFBE9E7)
    }
    
    // MARK: - Blue Grey
    
    // Blue Grey 50
    class func blue_grey_50() -> UIColor
    {
        return UIColor(netHex:0xECEFF1)
    }
    
    // MARK: - Pink
    
    // Pink 50
    class func pink_50() -> UIColor
    {
        return UIColor(netHex:0xFCE4EC)
    }
    
    // MARK: - Indigo
    
    // Indigo 50
    class func indigo_50() -> UIColor
    {
        return UIColor(netHex:0xE8EAF6)
    }
    
    // MARK: - Cyan
    
    // Cyan 50
    class func cyan_50() -> UIColor
    {
        return UIColor(netHex:0xE0F7FA)
    }
    
    // MARK: - Light Green
    
    // Light Green 50
    class func light_green_50() -> UIColor
    {
        return UIColor(netHex:0xF1F8E9)
    }
    
    // MARK: - Amber
    
    // Amber 50
    class func amber_50() -> UIColor
    {
        return UIColor(netHex:0xFFF8E1)
    }
    
    // MARK: - Brown
    
    // Brown 50
    class func brown_50() -> UIColor
    {
        return UIColor(netHex:0xEFEBE9)
    }
    
    // MARK: - Purple
    
    // Purple 50
    class func purple_50() -> UIColor
    {
        return UIColor(netHex:0xF3E5F5)
    }
    
    // MARK: - Blue
    
    // Blue 50
    class func blue_50() -> UIColor
    {
        return UIColor(netHex:0xE3F2FD)
    }
    
    // MARK: - Teal
    
    // Teal 50
    class func teal_50() -> UIColor
    {
        return UIColor(netHex:0xE0F2F1)
    }
    
    // MARK: - Lime
    
    // Lime 50
    class func lime_50() -> UIColor
    {
        return UIColor(netHex:0xF9FBE7)
    }
    
    // MARK: - Orange
    
    // Orange 50
    class func orange_50() -> UIColor
    {
        return UIColor(netHex:0xFFF3E0)
    }
    
    // Orange 100
    class func orange_100() -> UIColor
    {
        return UIColor(netHex:0xFFE0B2)
    }
    
    // Orange 200
    class func orange_200() -> UIColor
    {
        return UIColor(netHex:0xFFCC80)
    }
    
    // Orange 300
    class func orange_300() -> UIColor
    {
        return UIColor(netHex:0xFFB74D)
    }
    
    // Orange 400
    class func orange_400() -> UIColor
    {
        return UIColor(netHex:0xFFA726)
    }
    
    // Orange 500
    class func orange_500() -> UIColor
    {
        return UIColor(netHex:0xFF9800)
    }
    
    // Orange 600
    class func orange_600() -> UIColor
    {
        return UIColor(netHex:0xFB8C00)
    }
    
    // Orange 700
    class func orange_700() -> UIColor
    {
        return UIColor(netHex:0xF57C00)
    }
    
    // Orange 800
    class func orange_800() -> UIColor
    {
        return UIColor(netHex:0xEF6C00)
    }
    
    // Orange 900
    class func orange_900() -> UIColor
    {
        return UIColor(netHex:0xE65100)
    }
    
    // MARK: - Grey
    
    // Grey 50
    class func grey_50() -> UIColor
    {
        return UIColor(netHex:0xFAFAFA)
    }
    
    // Grey 100
    class func grey_100() -> UIColor
    {
        return UIColor(netHex:0xF5F5F5)
    }
    
    // Grey 200
    class func grey_200() -> UIColor
    {
        return UIColor(netHex:0xEEEEEE)
    }
    
    // Grey 300
    class func grey_300() -> UIColor
    {
        return UIColor(netHex:0xE0E0E0)
    }
    
    // Grey 400
    class func grey_400() -> UIColor
    {
        return UIColor(netHex:0xBDBDBD)
    }
    
    // Grey 500
    class func grey_500() -> UIColor
    {
        return UIColor(netHex:0x9E9E9E)
    }
    
    // Grey 600
    class func grey_600() -> UIColor
    {
        return UIColor(netHex:0x757575)
    }
    
    // Grey 700
    class func grey_700() -> UIColor
    {
        return UIColor(netHex:0x616161)
    }
    
    // Grey 800
    class func grey_800() -> UIColor
    {
        return UIColor(netHex:0x424242)
    }
    
    // Grey 900
    class func grey_900() -> UIColor
    {
        return UIColor(netHex:0x212121)
    }
}
