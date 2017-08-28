//
//  Context.swift
//  web
//
//  Created by Azmi SAHIN on 28/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

// Reuared
import Foundation

/// Models Base Extension
extension DB
{
    /// DB Context
    ///
    /// DB.Context Namespace
    ///
    /// - Parameters:
    ///
    /// - Returns: DB.Context
    ///
    /// Usage
    ///
    ///     let context = DB.Context()
    ///
    ///
    public class Context : NSObject{
        // MARK: - Property
        
        /// Pages
        ///
        /// Sayfalar
        public var Pages : [Models.Page]
        
        /// Initalize
        public override init() {
            Pages = []
        }
    }
}
