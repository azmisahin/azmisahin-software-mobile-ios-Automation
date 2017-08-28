//
//  App.swift
//  web
//
//  Created by Azmi SAHIN on 28/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

// MARK: - Requared
import Foundation

// MARK: - App

/// Application Core
///
///     var app : App.Managers
///
/// All Manager
public class App: NSObject{

    //# MARK: - Instance
    
    /// App Managers
    ///
    ///     var app : App.Managers
    ///
    ///
    class var Managers: App {
        
        // Singleton
        struct Singleton{
            static let managers = App()
        }
        
        // Return
        return Singleton.managers
    }
    
    // MARK: - Define
    
    /// App is Active
    ///
    ///     var app : App.Managers
    ///
    ///     Print("Core Initalized \(app.isActive)")
    ///
    var isActive: Bool
    
    // MARK: - Managers
    
    /// Resource Manager
    ///
    ///     var Resources : ResourceManager()
    ///
    ///     Print("Manager Initalized")
    /// -
    var Resources: ResourceManager
    

    // Initializers
    override init(){
        
        // MARK: - Managers
        
        // MARK: - App Shared Manager
        Resources = ResourceManager()
        
        // Initalize Activate
        isActive = true
        
        super.init()
    }
}
