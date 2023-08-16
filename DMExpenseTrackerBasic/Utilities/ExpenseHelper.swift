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
        var shopping: [Expense] = []
        var entertainment: [Expense] = []
        var transportation: [Expense] = []
        var shoes: [Expense] = []
        var home: [Expense] = []
        var housing: [Expense] = []
        var food: [Expense] = []
        var personalCare: [Expense] = []
        var health: [Expense] = []
        var travel: [Expense] = []
        var unknown: [Expense] = []
        
        for i in 0...arr.count - 1 {
            
            switch arr[i].category {
            case "Shopping":
                shopping.append(arr[i])
            case "Entertainment":
                entertainment.append(arr[i])
            case "Transportation":
                transportation.append(arr[i])
            case "Shoes":
                shoes.append(arr[i])
            case "Home":
                home.append(arr[i])
            case "Housing":
                housing.append(arr[i])
            case "Food":
                food.append(arr[i])
            case "Personal Care":
                personalCare.append(arr[i])
            case "Health":
                health.append(arr[i])
            case "Travel":
                travel.append(arr[i])
            default:
                unknown.append(arr[i])
            }
        }
        
        let returnDictionary = ["Shopping": shopping, "Entertainment": entertainment, "Transportation": transportation, "Shoes": shoes, "Home": home, "Food": food, "Personal Care": personalCare, "Health": health, "Travel": travel]
        
        return returnDictionary
    }
}
