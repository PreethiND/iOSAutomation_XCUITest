//
//  TAUUIBaseTest.swift
//  TAUUITests
//
//  Created by Preethi N D on 27/02/25.
//  Copyright © 2025 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class TAUUIBaseTest: XCTestCase{
    var app = XCUIApplication()
    
    override func setUp(){
        super.setUp()
        app.launch()
    }
    
    override func tearDown(){
        super.tearDown()
        app.terminate()
    }
    
    func XCTAsyncAssert(_ element: XCUIElement){
        let isElementExist = element.waitForExistence(timeout: 10)
        if(isElementExist){
            XCTAssertTrue(element.exists)
        }
    }
}
