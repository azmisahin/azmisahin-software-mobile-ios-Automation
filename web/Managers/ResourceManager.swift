//
//  ResourceManager.swift
//  web
//
//  Created by Azmi SAHIN on 28/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

// MARK: - Requared
import Foundation

// MARK: - Resource Manager
/// Resource Manager
///
/// Kaynak Yönetimi
class ResourceManager: NSObject{
    
    // MARK: - Define
    
    
    // MARK: - Initalizer
    override init(){
        
    }
    
    // MARK: - Function
    
    /// Get Resource - By String
    ///
    /// Parameters
    /// - key: String = ""
    ///
    /// Returns
    /// - String
    ///
    /// Usage
    ///
    ///     let result: String = ResourceManager().Get(key: "sample")
    ///     // Print
    ///     print(result)
    ///
    func Get(key: String) -> String {
        let result = NSLocalizedString(key, comment: "")
        return result
    }
    
    /// Get Resource - By String
    ///
    /// Parameters
    /// - key: String = ""
    ///
    /// Returns
    /// - Bool
    ///
    /// Usage
    ///
    ///     let result: String = ResourceManager().Get(key: "sample")
    ///     // Print
    ///     print(result)
    ///
    func GetBool(key: String) -> Bool {
        let result = NSLocalizedString(key, comment: "")
        return Bool(result) ?? false
    }
    
    /// Get Resource - By String
    ///
    /// Parameters
    /// - key: String = ""
    ///
    /// Returns
    /// - Bool
    ///
    /// Usage
    ///
    ///     let result: String = ResourceManager().Get(key: "sample")
    ///     // Print
    ///     print(result)
    ///
    func GetInt(key: String) -> Int {
        let result = NSLocalizedString(key, comment: "")
        return Int(result) ?? 0
    }
}
