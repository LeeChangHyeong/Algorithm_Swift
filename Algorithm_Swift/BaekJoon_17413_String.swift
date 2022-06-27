//
//  BaekJoon_17413_String.swift
//  Algorithm_Swift
//
//  Created by 이창형 on 2022/06/27.
//

mport Foundation


let input = readLine()!

// 뒤집어 출력하지 않을 var
var noReverse = ""

// 뒤집어 출력할 var
var Reverse = ""

for char in input {
    if char == "<" {
        noReverse.append(char)
        if !Reverse.isEmpty {
            // Reverse를 뒤집어서 출력하고 Reverse를 초기화 시킨다
            print(String(Reverse.reversed()), terminator: "")
            Reverse = ""
        }
    } else if char == ">" {
        noReverse.append(char)
        // noReverse를 뒤집지 않고 그대로 출력하고 noReverse를 초기화 시킨다
        print(noReverse, terminator: "")
        noReverse = ""
    } else {
        if noReverse.first == "<" {
            noReverse.append(char)
        } else if char == " " {
            print(String(Reverse.reversed()), terminator: " ")
            Reverse = ""
        } else {
            Reverse.append(char)
        }
    }
}
if !Reverse.isEmpty {
    print(String(Reverse.reversed()), terminator: "")
}
