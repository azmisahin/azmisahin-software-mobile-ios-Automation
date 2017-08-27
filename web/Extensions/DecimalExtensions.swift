//
//  DecimalExtensions.swift
//  web
//
//  Created by Azmi SAHIN on 27/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

//# MARK: - Requared
import Foundation

// MARK: - Decimal Extension
extension Decimal
{
    /// ToDouble
    ///
    /// Decimal.ToDouble
    ///
    /// - Parameters: self
    ///
    /// - Returns: Double
    ///
    /// Usage
    ///
    ///     let result = Decimal.ToDouble
    ///
    // To Double
    var ToDouble:Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }

}
