//
//  CategoriesViewController.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/27/23.
//

import UIKit

/**
 1.1 Create the user interface. See the provided screenshot for how the UI should look. Feel free to customize the colors, font, etc.
 1.2 Use the constants in the `Constants` file to assign the tableviews' reuse IDs and the second screen's storyboard ID.
 */
class CategoriesViewController: UIViewController {
    
    /**
     2.1 Connect the UITableView to the code.
     */
    @IBOutlet weak var tableView: UITableView!
    /**
     3.1 Follow the steps in the `Expense` file.
     3.2 Create a [String: [Expense]] variable called expensesByCategory and initialize it to an empty dictionary.
     3.3 Create a [String] variable called expensesByCategory and initialize it to an empty array.
     
     We will assign the correct data to the variables soon.
     */
        var expensesByCategory = ExpenseHelper.getExpensesByCategory(for: Expense.expenses)
        var categories = self.expensesByCategory.keys
    /**
     8.1 Call the `configureViewController` and `configureTableView` functions.
     */
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /**
     4.1 Set the `CategoriesViewController`'s title to be "Categories".
     4.2 Follow the steps in the `ExpenseHelper` file.
     4.3 Use `ExpenseHelper` to assign the correct data to `expensesByCategory.
     4.4 Use `expensesByCategory` to get an array of categories and assign the result to `categories`.
     */
    func configureViewController() {
        
    }
    
    /**
     5.1 Have the `CategoriesViewController` conform to the `UITableViewDelegate` and `UITableViewDataSource` protocols. Set the `tableView`'s `delegate` and `dataSource` to self. The number of rows in section should be the number of categories we have. Each cell should display the category at the corresponding index in `expensesByCategory`. We will not be using a custom cell for this UITableView.
     5.1 Follow the steps in the `ExpensesViewController` file.
     5.2 Implement the `didSelectRowAt` function. Tapping on a cell should transition the user to the second screen. You may find the following article helpful: https://www.hackingwithswift.com/example-code/uikit/how-to-use-dependency-injection-with-storyboards.
    */
    func configureTableView() {
        
    }
}
