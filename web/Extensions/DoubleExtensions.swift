//
//  DoubleExtensions.swift
//  web
//
//  Created by Azmi SAHIN on 27/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

//# MARK: - Requared
import Foundation

// MARK: - Double Extension
extension Double
{
    /// ToString
    ///
    /// Double.ToString(value: double)
    ///
    /// - Parameters: double
    ///
    /// - Returns: string
    ///
    /// Usage
    ///
    ///     let result = Double.ToString(value:double)
    ///
    // To String
    static func ToString(value: Double) -> String
    {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 2;
        formatter.locale = Locale(identifier: Locale.current.identifier)
        let result = formatter.string(from: value as NSNumber);
        return result!;
    }
    
    /// ToInt
    ///
    /// Double.ToInt(value: double)
    ///
    /// - Parameters: double
    ///
    /// - Returns: int
    ///
    /// Usage
    ///
    ///     let result = Double.ToInt(value:double)
    ///
    // To Int
    static func ToInt(value: Double) -> Int
    {
        if value > Double(Int.min) && value < Double(Int.max) {
            return Int(value)
        } else {
            return 0
        }
    }
    
}

