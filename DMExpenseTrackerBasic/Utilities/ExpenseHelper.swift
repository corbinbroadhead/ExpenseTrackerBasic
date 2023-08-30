//
//  ExpenseHelper.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/27/23.
//

import Foundation

class ExpenseHelper {
    
    /**
     4.2 Create a static function called `calculateTotalSpent` that accepts an array of `Expense` and returns the total amount of money the user spent. Feel free to run the provided test to know if your code is correct.
     */
    static func calculateTotalSpent(for arr: [Expense]) -> Double {
        var total = 0.0
        for i in 0...arr.count - 1 {
            total += arr[i].amount
        }
        return total
    }
    /**
     4.2 Create a static function called `getExpensesByCategory` that accepts an array of `Expense` and returns a dictionary where each key is a category and each value is an array of `Expense` belonging to that category. Feel free to run the provided test to know if your code is correct.
     */
    static func getExpensesByCategory(for arr: [Expense]) -> [String: [Expense]]{
        var toReturn: [String:[Expense]] = [:]
        for expense in arr {
            if toReturn.keys.contains(expense.category) {
                toReturn[expense.category]!.append(expense)
            } else {
                toReturn[expense.category] = [expense]
            }
        }
        return toReturn
    }
}


