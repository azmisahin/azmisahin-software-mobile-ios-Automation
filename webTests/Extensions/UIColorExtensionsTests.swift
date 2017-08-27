//
//  UIColorExtensionsTests.swift
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
/// `UIColor Extensions Tests`
///
class UIColorExtensionsTests: XCTestCase {
    
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
    
    /// Test UIColorNamed
    func testUIColorNamed() {
        
        // Define
        actual = false
        
        // Proc
        actual = result
        
        // Test Process
        let test = UIColor.red_50()
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
