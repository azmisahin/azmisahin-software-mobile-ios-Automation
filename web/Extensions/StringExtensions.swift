//
//  StringExtensions.swift
//  web
//
//  Created by Azmi SAHIN on 27/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

//# MARK: - Requared
import Foundation

// MARK: - String Extension
extension String
{
    /// ToMoney
    ///
    /// String.ToMoney(value: decimal)
    ///
    /// - Parameters: decimal
    ///
    /// - Returns: string [TL]
    ///
    /// Usage
    ///
    ///     let result = String.ToMoney(value:decimal)
    ///
    /// To Money
    static func ToMoney(value: Decimal) -> String
    {
        // Define
        // let describ: String = String(describing: value)
        
        // Decimal Number
        let decimalNumber = NSDecimalNumber(decimal: value)
        
        // Number Formatter
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal //.currency
        numberFormatter.locale = Locale(identifier: "tr_TR")
        
        // String Number
        let stringNumber = numberFormatter.string(from: decimalNumber)
        
        // Proc
        var result = stringNumber!
        
        result = "\(result) TL" // TL  - USD - EUR
        
        return result
    }
    
    /// ToBool
    ///
    /// String.ToBool(value: string)
    ///
    /// - Parameters: string [ true , True,  yes, Yes ]
    ///
    /// - Returns: bool [ true or false ]
    ///
    /// Usage
    ///
    ///     let result = String.ToBool(value:bool)
    ///
    /// To Bool
    static func ToBool(value: String) -> Bool
    {
        // Define
        var result: Bool = false
        
        // Proc
        if value == "true" || value == "True" || value == "yes" || value == "Yes"
        {
            result = true
        }
        else
        {
            result = false
        }
        
        // Return
        return result
    }
    
    /// ToInt
    ///
    /// String.ToInt(value: string)
    ///
    /// - Parameters: string
    ///
    /// - Returns: int
    ///
    /// Usage
    ///
    ///     let result = String.ToInt(value:string)
    ///
    /// To Int
    static func ToInt(value: String) -> Int
    {
        // Define
        var result: Int = 0
        
        // Proc
        result = Int(value)!
        
        // Return
        return result
    }
    
    /// ToShortDateString
    ///
    /// String.ToShortDateString(value: string)
    ///
    /// - Parameters: string
    ///
    /// - Returns: string
    ///
    /// Usage
    ///
    ///     let result = String.ToShortDateString(value:string)
    ///
    /// To Short Date String
    static func ToShortDateString(value: String) -> String
    {
        // Define
        var result: String = ""
        
        // Proc
        let index = value.index(value.startIndex, offsetBy: 10)
        result = value.substring(to: index)
        
        // Return
        return result
    }
}
