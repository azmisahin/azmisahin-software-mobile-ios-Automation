//
//  UIApplicationExtensions.swift
//  web
//
//  Created by Azmi SAHIN on 27/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

// Requared
import UIKit

// Global Private Define
private var firstLaunch : Bool = false

// MARK: - UI Application
extension UIApplication {
    
    /// isFirstTimeLaunch
    ///
    /// UIApplication.isFirstTimeLaunch()
    ///
    /// - Parameters:
    ///
    /// - Returns: Bool [ true or false]
    ///
    /// Usage
    ///
    ///     let result = UIApplication.isFirstTimeLaunch()
    ///
    /// Is First Time Launch
    static func isFirstTimeLaunch() -> Bool {
        
        // Set
        let firstLaunchFlag = "FirstLaunchFlag"
        let isFirstLaunch = GetBoolKey(flag: firstLaunchFlag)
        
        // Check
        if (isFirstLaunch) {
            firstLaunch = isFirstLaunch
            _ = SetBoolKey(flag: firstLaunchFlag, value: "false")
        }
        
        // Return
        return firstLaunch || isFirstLaunch
    }
    
    /// GetBoolKey
    ///
    /// UIApplication.GetBoolKey(flag:string)
    ///
    /// - Parameters:string
    ///
    /// - Returns: Bool [ true or false]
    ///
    /// Usage
    ///
    ///     let result = UIApplication.GetBoolKey(flag:"test")
    ///
    /// Get Bool Key
    static func GetBoolKey(flag: String) -> Bool{
        
        let result = UserDefaults.standard.string(forKey: flag) == nil
        
        return result
    }
    
    /// SetBoolKey
    ///
    /// UIApplication.SetBoolKey(flag:string,value:string)
    ///
    /// - Parameters:string,string(true or false)
    ///
    /// - Returns: Bool
    ///
    /// Usage
    ///
    ///     let result = UIApplication.SetBoolKey(flag:"test",value:"true")
    ///
    /// Set Bool Key
    static func SetBoolKey(flag: String,value:String) -> Bool{
        
        // Set
        UserDefaults.standard.set(value, forKey: flag)
        
        // Sync
        UserDefaults.standard.synchronize()
        
        // Return
        let result = GetBoolKey(flag: flag)
        
        return result
    }
    
    /// Base View Controller
    class func baseViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return baseViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return baseViewController(base: selected)
            }
        }
        if let presented = base?.presentedViewController {
            return baseViewController(base: presented)
        }
        return base
    }
}
