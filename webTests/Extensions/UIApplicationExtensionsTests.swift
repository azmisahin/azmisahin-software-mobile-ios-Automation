//
//  UIApplicationExtensionsTests.swift
//  web
//
//  Created by Azmi SAHIN on 27/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

// MARK: - Requared
import XCTest
import UIKit

@testable import web

// MARK: - web Tests
/// web Extentions Tests
///
/// `UIApplication Extensions Tests`
///
class UIApplicationExtensionsTests: XCTestCase {
    
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
    
    /// Test isFirstTimeLaunch
    func testIsFirstTimeLaunch() {
        
        // Define
        actual = false
        
        // Proc
        actual = result
        
        // Test Process
        let test = UIApplication.isFirstTimeLaunch()
        print(test)
        
        // Assert
        XCTAssertEqual(actual, expected,"Initalize Problem");
    }
    
    /// Test SetBoolKey
    func testSetBoolKey() {
        
        // Define
        actual = false
        
        // Proc
        actual = result
        
        // Test Process
        let test = UIApplication.SetBoolKey(flag: "alfa", value: "true")
        print(test)
        
        // Assert
        XCTAssertEqual(actual, expected,"Initalize Problem");
    }

    /// Test GetBoolKey
    func testGetBoolKey() {
        
        // Define
        actual = false
        
        // Proc
        actual = result
        
        // Test Process
        let test = UIApplication.GetBoolKey(flag: "alfa")
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
