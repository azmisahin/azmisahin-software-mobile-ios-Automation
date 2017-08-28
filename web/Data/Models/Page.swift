//
//  Page.swift
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
    /// Models.Page
    ///
    /// Models.Page Namespace
    ///
    /// - Parameters:
    ///
    /// - Returns: Models.Page
    ///
    /// Usage
    ///
    ///     let model = Models.Page()
    ///
    public class Page : Base{
        
        // MARK: - Property
        
        /// Title
        ///
        /// Başlık
        ///
        /// Usage
        ///
        ///     [StringLength(maximumLength: 50)]
        ///
        public var Title : String = ""
        
        /// Description
        ///
        /// Açıklama
        ///
        /// Usage
        ///
        ///     [StringLength(maximumLength: 50)]
        ///
        public var Description : String = ""
        
        /// Detail
        ///
        /// Detay
        ///
        /// Usage
        ///
        ///     [StringLength(maximumLength: 50)]
        ///
        public var Detail : String = ""
        
        /// Picture
        ///
        /// Resim Obje ismi
        public var Picture : String = ""
        
        // MARK: - Function
        
        /// Full Content
        ///
        /// Uzun içerik - Detay
        public var FullContent : String
        {
            // Set
            var result : String = ""
            
            // Proc
            
            
            // Result
            result = "\(self.Title) \(self.Description)"
            
            // Return
            return result
        }
    }
}
