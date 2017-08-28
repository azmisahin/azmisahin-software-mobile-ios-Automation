//
//  ContextTests.swift
//  web
//
//  Created by Azmi SAHIN on 28/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

// MARK: - Requared
import XCTest

@testable import web

// MARK: - web Tests
/// web Context Tests
///
/// `Context Tests`
///
class ContextTests: XCTestCase {
    
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
    
    /// Test Application Initalize
    func testApplicationInitalize() {
        
        // Define
        actual = false
        
        // Proc
        actual = result
        
        // Test Process
        let test = DB.Context()
        print(test)
        
        // Assert
        XCTAssertEqual(actual, expected,"Initalize Problem");
    }
    
    /// Test Application Initalize
    func testContextPages() {
        
        // Define
        actual = false
        
        // Proc
        actual = result
        
        // Test Process
        let item = DB.Models.Page()
        item.Description="Test"
        item.Detail="Detail"
        item.Title="Title"
        App.DataContext.Pages.append(item)
        
        print("count: \(App.DataContext.Pages.count) ")
        
        // Assert
        XCTAssertEqual(App.DataContext.Pages.count, 1,"Initalize Problem");
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
