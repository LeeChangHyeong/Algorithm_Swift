//
//  main.swift
//  Algorithm_Swift
//
//  Created by 이창형 on 2022/06/26.
//

import Foundation

let a = readLine()!

var tag = ""
var word = ""

for char in a {
    
    if char == "<" {
        
        tag.append(char)
        if !word.isEmpty {
            print(String(word.reversed()),terminator: "")
            word = ""
        }
        
    } else if char == ">" {
        
        tag.append(char)
        print(tag,terminator: "")
        tag = ""
        
    } else {
        
        if tag.first == "<" {
            tag.append(char)
        } else if char == " " {
            print(String(word.reversed()),terminator: " ")
            word = ""
        } else {
            word.append(char)
        }
    }
}

if !word.isEmpty {
    print(String(word.reversed()))
}
