//
//  main.swift
//  Algorithm_Swift
//
//  Created by 이창형 on 2022/06/26.
//

import Foundation

// 첫번째와 두번째 숫자를 받아준다
let firstNum = Int(readLine()!)!
let secondNum = Int(readLine()!)!

// 세자리 곱하기 세자리의 곱셈의 원리(?)
var A = firstNum * (secondNum % 10)
var B = firstNum * (((secondNum - (secondNum % 10)) % 100) / 10)
var C = firstNum * (secondNum / 100)
var D = firstNum * secondNum

print(A)
print(B)
print(C)
print(D)
    
