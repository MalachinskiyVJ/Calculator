//
//  MinusTest.swift
//  SimpleCalculatorUITests
//
//  Created by Malachinskiy on 4/10/19.
//  Copyright © 2019 Alex Ilyenko. All rights reserved.
//

import XCTest

class MinusTest: BaseTest{
    
    func testMinus(){
        let calculator = Calculator()
        .enter(firstNumber)
        .minus(secondNumber)
        
        XCTAssertEqual(firstNumber - secondNumber, calculator.numberOnScreen)
    }
    
    func testMinusZero(){
        let calculator = Calculator()
        .minus(firstNumber)
        
        XCTAssertEqual(-firstNumber, calculator.numberOnScreen)
    }
}
