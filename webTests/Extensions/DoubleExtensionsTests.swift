//
//  DoubleExtensionsTests.swift
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
/// `Double Extensions Tests`
///
class DoubleExtensionsTests: XCTestCase {
    
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
    
    /// Test ToString
    func testToString() {
        
        // Define
        actual = false
        
        // Proc
        actual = result
        
        // Test Process
        let test = Double.ToString(value: Double.init())
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
        let test = Double.ToInt(value: Double.init())
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
