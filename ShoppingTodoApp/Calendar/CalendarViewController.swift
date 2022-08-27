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
}

extension CalendarViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    }
    
    
}
