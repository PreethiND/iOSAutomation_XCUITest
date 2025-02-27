//
//  TAUSteps.swift
//  TAUUITests
//
//  Created by Preethi N D on 27/02/25.
//  Copyright © 2025 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

extension TAUUIBaseTest{
    func givenAppIsReady(){
        XCTContext.runActivity(named: "Given app is ready"){ _ in
            XCTAssert(TAUScreen.enrollButton.element.exists)
        }
    }
    
    func whenIEnter(city: String){
        XCTContext.runActivity(named: "When I Enter city \(city)"){_ in
            TAUScreen.cityTextField.element.tap()
            TAUScreen.cityTextField.element.typeText(city)
        }
       
    }
    
    func whenIEnrolled(){
        XCTContext.runActivity(named: "When I Enrolled"){_ in
            TAUScreen.enrollButton.element.tap()
        }
    }
    
    func thenIShouldSeeThankYouMessage(){
        XCTContext.runActivity(named: "Then I should see Thank You message"){ _ in
            XCTAsyncAssert(TAUScreen.thankYouMessage.element)
        }
    }
}
