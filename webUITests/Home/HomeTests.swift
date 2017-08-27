//
//  HomeTests.swift
//  web
//
//  Created by Azmi SAHIN on 27/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

//# MARK: - Requared
import XCTest

// MARK: - Home Board UI Tests
class HomeTests: XCTestCase {
    
    // MARK: - Global Define
    
    
    /// Test Setup
    override func setUp() {
        
        // Base
        super.setUp()
        
        // Failure
        continueAfterFailure = false
        
        // Launch
        XCUIApplication().launch()
    }
    
    /// Test Tear Down
    override func tearDown() {
        
        // Base
        super.tearDown()
    }
    
    /// Test Navigation Algoritma
    func testNavigation() {
        
        // Algoritma Start
        let tabBarsQuery = XCUIApplication().tabBars
        
        // Navigate Start
        tabBarsQuery.buttons["Most Viewed"].tap()
        tabBarsQuery.buttons["Most Recent"].tap()
        
        // Algoritma End
        print("=============Navigation Finish=====================")
    }
}
