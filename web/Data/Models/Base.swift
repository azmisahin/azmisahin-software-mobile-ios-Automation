//
//  Base.swift
//  web
//
//  Created by Azmi SAHIN on 28/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

// Reuared
import Foundation

/// Models Base Extension
extension DB.Models
{
    /// Models.Base
    ///
    /// Models.Base Namespace
    ///
    /// - Parameters:
    ///
    /// - Returns: Models.Base
    ///
    /// Usage
    ///
    ///     let model = Models.Base()
    ///
    public class Base : NSObject{
        // MARK: - Property
        
        /// Key
        ///
        /// Anahtar
        public var Id : Int = -1
        
        /// Name
        ///
        /// İsim
        public var Name : String = ""
        
        /// This item is Active?
        ///
        /// Aktif mi?
        public var isActive : Bool = false
        
        /// This item is Enabled?
        ///
        /// Kullanıma Açık mı?
        public var isEnabled : Bool = false
        
        /// Sort By
        ///
        /// Sıralama ölçütü
        public var Order : Int = 0
    }
}
