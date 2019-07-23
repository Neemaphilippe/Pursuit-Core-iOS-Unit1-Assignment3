//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

var userOperation = readLine()!
let number = readLine()
let number2 = readLine()
var numInput = Int()
//part1a
enum BasicMath: String  {
    case addition = "+"
    case subtraction = "-"
    case multiplication =  "*"
    case division = "/"
    
    func math(x: String?) {
        let c = BasicMath.init(rawValue: userOperation)
        switch self {
        case .addition:
            if let response1 = number,
                let response2 = number2,
                let num1 = Int(response1),
                let num2 = Int(response2) {
                
                var answer = num1 + num2
                print("\(num1) + \(num2) = \(answer)")
                
            }
            
        case .subtraction:
            if let response1 = number,
                let response2 = number2,
                let num1 = Int(response1),
                let num2 = Int(response2) {
                
                var answer = num1 - num2
                print("\(num1) - \(num2) = \(answer)")
                
            }
        case .multiplication:
            if let response1 = number,
                let response2 = number2,
                let num1 = Int(response1),
                let num2 = Int(response2) {
                
                var answer = num1 * num2
                print("\(num1) * \(num2) = \(answer)")
                
            }
        case .division:
            if let response1 = number,
                let response2 = number2,
                let num1 = Int(response1),
                let num2 = Int(response2) {
                
                var answer = num1 / num2
                print("\(num1) / \(num2) = \(answer)")
                
            }
        }
    }
}

var currentOperation = BasicMath(rawValue: userOperation)
currentOperation!.math(x:userOperation)



