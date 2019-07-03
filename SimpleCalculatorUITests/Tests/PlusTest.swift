//
//  PlusTest.swift
//  SimpleCalculatorUITests
//
//  Created by Malachinskiy on 4/10/19.
//  Copyright © 2019 Alex Ilyenko. All rights reserved.
//

import XCTest

class PlusTest: BaseTest{
    
    func testPlus(){
        let calculator = Calculator()
            .enter(firstNumber)
            .plus(secondNumber)
        
        XCTAssertEqual(firstNumber + secondNumber, calculator.numberOnScreen)
    }
}
