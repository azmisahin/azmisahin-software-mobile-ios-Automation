//
//  UIWindowExtensions.swift
//  web
//
//  Created by Azmi SAHIN on 27/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

//# MARK: - Requared
import UIKit

// MARK: - Extensions / UIWindow
extension UIWindow {
    
    /// Active Root View Controller
    ///
    /// UIWindows.ActiveRootViewController()
    ///
    /// - Parameters:
    ///
    /// - Returns: UIViewController
    ///
    /// Usage
    ///
    ///     let result = UIWindows.ActiveRootViewController(
    ///
    /// Active Root View Controller
    public func ActiveRootViewController() -> UIViewController?
    {
        if let rootViewController: UIViewController = self.rootViewController
        {
            return rootViewController
        }
        return nil
    }
}
