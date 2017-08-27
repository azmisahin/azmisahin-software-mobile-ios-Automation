//
//  DateExtensions.swift
//  web
//
//  Created by Azmi SAHIN on 27/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

//# MARK: - Requared
import Foundation

// MARK: - Date Extension
extension Date
{
    /// ToString
    ///
    /// Data.ToString(value:Date)
    ///
    /// - Parameters: Date
    ///
    /// - Returns: String
    ///
    /// Usage
    ///
    ///     let result = Date.ToString(value:Date)
    ///
    static func ToString(value: Date) -> String
    {
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd hh:mm:ss"
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "dd.MM.yyyy"
        
        let result : String = dateFormatterPrint.string(from: value)
        
        return result
    }
}
