//
//  AppDelegate.swift
//  web
//
//  Created by Azmi SAHIN on 26/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

//# MARK: - Requared
import UIKit

// MARK: - Application A.L.C.
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // MARK: - Define
    var window: UIWindow?
    
    // Application
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Check First Time
        checkFirstTime()
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
       
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
       
    }
    
    /// Check First Time
    func checkFirstTime() {
        
        // Control Process Environment
        if ProcessInfo.processInfo.environment["Alfa"] != nil
        {
            // Alfa Configuration Core
        }
        
        // First Time Get Data
        var isFirstTime = false
        
        #if DEBUG
            isFirstTime = firstTimeDebug()
        #else
            isFirstTime = UIApplication.GetBoolKey(flag: "firstTime")
        #endif
        
        // Check
        switch isFirstTime {
        case true:
            // First Time Run Progress
            firstTimeRun()
        default:
            // Normal Progress
            NormalRun()
        }
    }
    
    /// First Time Debug
    func firstTimeDebug() -> Bool {
        
        // Return
        return true
    }
    
    /// First Time Run
    func firstTimeRun() {
        
    }
    
    /// Normal Run
    func NormalRun() {
        
    }
    
}

