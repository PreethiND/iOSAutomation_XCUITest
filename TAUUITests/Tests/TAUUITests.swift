//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by Preethi N D on 27/02/25.
//  Copyright © 2025 Shashikant Jagtap. All rights reserved.


import XCTest

class TAUUITests: TAUUIBaseTest {

    func testAllElementsOfMainScreen() {
        
        let app = XCUIApplication()
        app.staticTexts["welcomeMessage"].tap()
        app.staticTexts["enterCity"].tap()
        app.buttons["enrollButton"].tap()
        app.images["TAUlogo"].tap()
        XCTAssertTrue(app.staticTexts["Please Enter City"].exists)
    }
    
    func testThankYouMessage() {
        
        let app = XCUIApplication()
        app.textFields["city"].tap()
        app.textFields["city"].typeText("London")
        app.buttons["enrollButton"].tap()
        XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
    }

}

