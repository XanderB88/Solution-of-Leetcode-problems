//
//  LengthOfLastWord.swift
//  LeetcodeProblems
//
//  Created by Alexander on 03.02.2022.
//

import Foundation

class LengthOfLastWord {
    
    func lengthOfLastWord(string: String) -> Int {
        
        let arrayOfString = string.split(separator: " ")
        print(arrayOfString)
        
        guard let lastElement = arrayOfString.last else { return 0 }
        print(lastElement)
        print(lastElement.count)
        
        return lastElement.count
    }
}
