//
//  PlusOne.swift
//  LeetcodeProblems
//
//  Created by Alexander on 03.02.2022.
//

/*
 You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.
 
 Increment the large integer by one and return the resulting array of digits.
 
 
 
 Example 1:
 
 Input: digits = [1,2,3]
 Output: [1,2,4]
 Explanation: The array represents the integer 123.
 Incrementing by one gives 123 + 1 = 124.
 Thus, the result should be [1,2,4].
 */

import Foundation

class PlusOne {
    func plusOne(digits: [Int]) -> [Int] {
        
        var array = digits // Given array
        var index = array.count - 1 // Last index in array
        
        while index >= 0 {
            
            if array[index] < 9 {
              
                // Go here if last element in array < 9
                array[index] += 1
                return array
            }
            
            array[index] = 0
            index -= 1
        }
        
        array.insert(1, at: 0)
        return array
    }
}


