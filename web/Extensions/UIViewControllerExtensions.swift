//
//  UIViewControllerExtensions.swift
//  web
//
//  Created by Azmi SAHIN on 27/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

//# MARK: - Requared
import UIKit

// MARK: - Extensions / UIViewController
public extension UIViewController {
    
    // MARK: - Define
    var activityIndicatorTag: Int { return 999999 }
    
    /// Start Activity Indicator
    public func ActivityIndicatorStart(
        style: UIActivityIndicatorViewStyle = .gray,
        location: CGPoint? = nil) {
        
        let loc = location ?? self.view.center
        DispatchQueue.main.async(execute: {
            
            let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: style)
            activityIndicator.tag = self.activityIndicatorTag
            activityIndicator.center = loc
            activityIndicator.hidesWhenStopped = true
            activityIndicator.startAnimating()
            self.view.addSubview(activityIndicator)
        })
    }
    
    /// Stop Activity Indicator
    public func ActivityIndicatorStop() {
        
        DispatchQueue.main.async(execute: {
            if let activityIndicator = self.view.subviews.filter(
                { $0.tag == self.activityIndicatorTag}).first as? UIActivityIndicatorView {
                activityIndicator.stopAnimating()
                activityIndicator.removeFromSuperview()
            }
        })
    }
    
}
