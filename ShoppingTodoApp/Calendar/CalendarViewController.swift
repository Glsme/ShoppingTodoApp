//
//  CalendarViewController.swift
//  ShoppingTodoApp
//
//  Created by Seokjune Hong on 2022/08/27.
//

import UIKit

class CalendarViewController: BaseViewController {
    
    let mainView = CalendarView()
    
    override func loadView() {
        self.view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        print(#function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function, "CalendarViewController")
    }
    
    override func configureUI() {
        mainView.shoppingListTableView.delegate = self
        mainView.shoppingListTableView.dataSource = self
        mainView.shoppingListTableView.register(ShoppingListTableViewCell.self, forCellReuseIdentifier: ShoppingListTableViewCell.reuseIdentifier)
    }
    
}

extension CalendarViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ShoppingListTableViewCell.reuseIdentifier, for: indexPath) as? ShoppingListTableViewCell else { return UITableViewCell() }
        cell.backgroundColor = .cyan
        return cell
    }
    
    
}
