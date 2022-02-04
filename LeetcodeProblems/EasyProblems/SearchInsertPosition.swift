//
//   SearchInsertPosition.swift
//  LeetcodeProblems
//
//  Created by Alexander on 02.02.2022.
//

/*
 
 Problem 35. Search Insert Position
 Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
 
 [1,3,5,6], 5 → 2
 [1,3,5,6], 2 → 1
 [1,3,5,6], 7 → 4
 [1,3,5,6], 0 → 0
 
 */

import Foundation

class SearchInsertPosition {
    
    // Use binary search
    
    func searchInsert(_ numbers: [Int], _ target: Int) -> Int {
        
        var startIndex = 0
        var endIndex = numbers.count - 1
        
        while startIndex <= endIndex {
            
            let middleIndex = startIndex + (endIndex - startIndex) / 2
            print("__middleIndex \(middleIndex)__")
            
            if target < numbers[middleIndex] {
                
                endIndex = middleIndex - 1
                print("__endIndex \(endIndex)__")
            } else if target > numbers[middleIndex] {
                
                startIndex = middleIndex + 1
                print("__startIndex \(startIndex)__")
            } else {
               
                return middleIndex
            }
        }
        return startIndex
    }
}
