//
//  MultiplyTest.swift
//  SimpleCalculatorUITests
//
//  Created by Malachinskiy on 4/11/19.
//  Copyright © 2019 Alex Ilyenko. All rights reserved.
//

import XCTest

class MultiplyTest: BaseTest{
    func testMultiply(){
        let calculator = Calculator()
        .enter(firstNumber)
        .multiply(byNumber: secondNumber)
        
        XCTAssertEqual(firstNumber * secondNumber, calculator.numberOnScreen)
    }
}
