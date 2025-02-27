//
//  BDDTest.swift
//  TAUUITests
//
//  Created by Preethi N D on 27/02/25.
//  Copyright © 2025 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class BDDTest: TAUUIBaseTest{
    func testThankYouMessageinBDDStyle(){
        givenAppIsReady()
        whenIEnter(city: "London")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
    }
}
