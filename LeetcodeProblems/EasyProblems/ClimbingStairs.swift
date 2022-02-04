//
//  ClimbingStairs.swift
//  LeetcodeProblems
//
//  Created by Alexander on 04.02.2022.
//
/*
 You are climbing a staircase. It takes n steps to reach the top.

 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

  

 Example 1:

 Input: n = 2
 Output: 2
 Explanation: There are two ways to climb to the top.
 1. 1 step + 1 step
 2. 2 steps
 Example 2:

 Input: n = 3
 Output: 3
 Explanation: There are three ways to climb to the top.
 1. 1 step + 1 step + 1 step
 2. 1 step + 2 steps
 3. 2 steps + 1 step
  

 Constraints:

 1 <= n <= 45
 */

import Foundation

class ClimbingStairs {

    /*
     given 5
     
     1 1 1 1 1
     2 1 1 1
     1 2 1 1
     1 1 2 1
     1 1 1 2
     2 2 1
     1 2 2
     1 2 1
     */
    
    func climbingStairs(n: Int) -> Int {
        
        var countOfWays = [0,1,2]
        
        if n < 3 { return countOfWays[n]}
        
        for index in 3...n {
            // [0,1,2,3]
            // [0,1,2,3,5]
            // [0,1,2,3,5,8]
           countOfWays.append(countOfWays[index - 1] + countOfWays[index - 2])
        }
        print(countOfWays[n])
        return countOfWays[n]
    }
}
