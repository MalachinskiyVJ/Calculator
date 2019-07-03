//
//  BaseTest.swift
//  SimpleCalculatorUITests
//
//  Created by Malachinskiy on 4/10/19.
//  Copyright © 2019 Alex Ilyenko. All rights reserved.
//

import XCTest

class BaseTest: XCTestCase{
    
    private let app = XCUIApplication()
    let firstNumber = Double(arc4random_uniform(1000))
    let secondNumber = Double(arc4random_uniform(1000))
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        let screenshot = XCUIScreen.main.screenshot()
        let fullScreenshotAttachment = XCTAttachment(screenshot: screenshot)
        fullScreenshotAttachment.lifetime = .deleteOnSuccess
        add(fullScreenshotAttachment)
        app.terminate()
    }
}

