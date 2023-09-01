//
//  ExpensesViewController.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/28/23.
//

import UIKit

class ExpensesViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    /**
     6.1 Connect the UITableView and UILabel to the code.
     */
    @IBOutlet weak var expensesTableView: UITableView!
    @IBOutlet weak var expenseLabel: UILabel!
    /**
     7.1 Create a String variable for the category and an `[Expense]` variable for the expenses.
     7.2 Create an initializer to initialize the two variables. You may find the following article helpful: https://www.hackingwithswift.com/example-code/uikit/how-to-use-dependency-injection-with-storyboards.
     */
    var category: String
    var expensesArr: [Expense]
    init?(coder: NSCoder, category: String, expenses: [Expense]) {
        self.category = category
        self.expensesArr = expenses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /**
     12.1 Call the `configureViewController` and `configureTableView` functions.
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureTableView()
    }
    
    /**
     9.1 Have the UILabel display the amount of money the user spent for the selected category. For example, "You spent $25 on entertainment.".
     */
    func configureViewController() {
        var totalSpent = Double()
        for expense in expensesArr {
            totalSpent += expense.amount
        }
        expenseLabel.text = "You spent $\(totalSpent) on \(category)."
    }
    
    /**
     10.1 We **will** be using a custom cell for this UITableView. Follow the steps in the `ExpenseCell` file.
     10.2 Configure the tableview to display the correct data.
     */
    func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ExpensesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expensesArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.expenseReuseID, for: indexPath) as! ExpenseCell
        let expense = expensesArr[indexPath.row]
        cell.set(expense: expense)

        
        return cell
    }
}
