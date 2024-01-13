//
//  main.swift
//  UniqueLetter
//
//  Created by Dario Caric on 13/01/2024.
//

import Foundation

let str: String = "asjfhdsjfhjk"

var dict: [Character : Int] = [:]

var i = 0
for item in str {
    print("s:\(item)")
    if (i == 0) {
        dict[item] = 1
    } else {
        var foundLetter: Bool = false
        for (key, elem) in dict {
            if (item == key) {
                dict[key] = elem + 1
                foundLetter = true
                break
            }
        }
        if (!foundLetter) {
            dict[item] = 1
        }
    }
        
        
    i += 1
}

for (key, val) in dict {
    print("key:\(key)  val:\(val)")
}

