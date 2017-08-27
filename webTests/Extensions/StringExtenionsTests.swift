//
//  StringExtenionsTests.swift
//  web
//
//  Created by Azmi SAHIN on 27/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

// MARK: - Requared
import XCTest

@testable import web

// MARK: - web Tests
/// web Extentions Tests
///
/// `String Extensions Tests`
///
class StringExtensionsTests: XCTestCase {
    
    // MARK: - Global Define
    var expected: Bool!
    var result: Bool!
    var actual: Bool!
    var mock : MockBase!
    
    
    /// Test Setup
    override func setUp() {
        
        // Base
        super.setUp()
        
        // Define
        expected = true
        result = true
        actual = true
        mock = MockBase()
    }
    
    /// Test Tear Down
    override func tearDown() {
        
        // Base
        super.tearDown()
        
        // Tear
    }
    
    /// Test ToMoney
    func testToMoney() {
        
        // Define
        actual = false
        
        // Proc
        actual = result
        
        // Test Process
        let test = String.ToMoney(value: Decimal.init())
        print(test)
        
        // Assert
        XCTAssertEqual(actual, expected,"Initalize Problem");
    }

    /// Test ToBool
    func testToBool() {
        
        // Define
        actual = false
        
        // Proc
        actual = result
        
        // Test Process
        let test = String.ToBool(value: "yes")
        print(test)
        
        // Assert
        XCTAssertEqual(actual, expected,"Initalize Problem");
    }
    
    /// Test ToInt
    func testToInt() {
        
        // Define
        actual = false
        
        // Proc
        actual = result
        
        // Test Process
        let test = String.ToInt(value: "0")
        print(test)
        
        // Assert
        XCTAssertEqual(actual, expected,"Initalize Problem");
    }
    
    /// Test ToShortDateString
    func testToShortDateString() {
        
        // Define
        actual = false
        
        // Proc
        actual = result
        
        // Test Process
        let test = String.ToShortDateString(value: "2018-01-15T13:45:30")
        print(test)
        
        // Assert
        XCTAssertEqual(actual, expected,"Initalize Problem");
    }
    
    // Test Application Performance
    func testApplicationPerformance() {
        
        if( mock.testPerformance)
        {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.timeStyle = .full
            
            let date = NSDate()
            
            // Measure
            self.measure {
                
                //
                _ = dateFormatter.string(from: date as Date)
            }
        }
    }
}
