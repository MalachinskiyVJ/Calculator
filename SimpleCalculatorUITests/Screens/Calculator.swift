//
//  Calculator.swift
//  SimpleCalculatorUITests
//
//  Created by Malachinskiy on 4/10/19.
//  Copyright © 2019 Alex Ilyenko. All rights reserved.
//

import XCTest

class Calculator: BaseScreen{
    
    private lazy var scrreen = findAll(.staticText).firstMatch
    private lazy var buttons = findAll(.button)
    private lazy var multiplyButton = buttons["*"]
    private lazy var equalButton = buttons["="]
    private lazy var resetButton = buttons["AC"]
    private lazy var minusButton = buttons["-"]
    private lazy var plusButton = buttons["+"]

    var numberOnScreen: Double? {
        return Double(scrreen.label)
    }
    
    func enter(_ number: Double) -> Calculator{
        inputNumber(number)
        return self
    }
    
   func plus(_ number: Double) -> Calculator{
     return calculate(number, plusButton)
    }
    
    private func inputNumber(_ number: Double){
        for ch in String(number){
            buttons[String(ch)].tap()
        }
    }
    
    
    private func calculate(_ number: Double, _ operationButton: XCUIElement) -> Calculator {
        operationButton.tap()
        inputNumber(number)
        equalButton.tap()
        return self
    }
    
    func multiply(byNumber: Double) -> Calculator{
        return calculate(byNumber, multiplyButton)
    }
    
    func reset() -> Calculator{
        resetButton.tap()
        return self
    }
    
    func minus(_ number: Double) -> Calculator{
        return calculate(number, minusButton)
    }
}
