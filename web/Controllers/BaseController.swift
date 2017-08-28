//
//  BaseController.swift
//  web
//
//  Created by Azmi SAHIN on 28/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

// MARK: - Requared
import Foundation
import UIKit

// MARK: - Base Controller
/// Base Controller
///
/// `App Base Controller`
///
class BaseController : UIViewController{
    
    // MARK: - Define
    
    // MARK: - Function
    override func viewDidLoad() {
        ActivityIndicatorStart()
        log.debug("Did Load \(String(describing: self.title))")
        super.viewDidLoad()
        log.debug("Did Load Super \(String(describing: self.title))")
        ActivityIndicatorStop()
    }
    
    //override func viewWillAppear(_ animated: Bool) {
    //    ActivityIndicatorStart()
    //    log.debug("Will Apper \(String(describing: self.title))")
    //    super.viewWillAppear(animated)
    //    log.debug("Will Apper Super \(String(describing: self.title))")
    //}
    
    override func viewWillDisappear(_ animated : Bool) {
        log.debug("Will Dis Apper \(String(describing: self.title))")
        super.viewWillDisappear(animated)
        log.debug("Will Dis Apper Super \(String(describing: self.title))")
        ActivityIndicatorStop()
    }
    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        super.dismiss(animated: true, completion: nil)
        log.debug("Dismis \(String(describing: self.title))")
        ActivityIndicatorStop()
    }
    override func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        ActivityIndicatorStart()
        log.debug("Present \(String(describing: self.title))")
        super.present(viewControllerToPresent, animated: true, completion: ActivityIndicatorStop)
    }
}
