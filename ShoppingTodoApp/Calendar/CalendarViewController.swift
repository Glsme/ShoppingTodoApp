//
//  CalendarViewController.swift
//  ShoppingTodoApp
//
//  Created by Seokjune Hong on 2022/08/27.
//

import UIKit
import RealmSwift

class CalendarViewController: BaseViewController {
    
    let mainView = CalendarView()
    var tasks: Results<ShoppingModel>! {
        didSet {
            mainView.shoppingListTableView.reloadData()
            print("Success Reload: shoppingListTableView")
        }
    }
    
    override func loadView() {
        self.view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tasks = ShoppingModelRepository.shared.localRealm.objects(ShoppingModel.self)
        fetchRealm()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function, "CalendarViewController")
        print("task count: \(tasks.count)")
        
        mainView.shoppingListTableView.reloadData()
    }
    
    override func configureUI() {
        mainView.shoppingListTableView.delegate = self
        mainView.shoppingListTableView.dataSource = self
        mainView.shoppingListTableView.register(ShoppingListTableViewCell.self, forCellReuseIdentifier: ShoppingListTableViewCell.reuseIdentifier)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(addButtonClicked))
        self.navigationItem.rightBarButtonItem?.tintColor = .black
    }
    
    @objc func addButtonClicked() {
        print(#function)
        
        let vc = WriteViewController()
        transViewController(ViewController: vc, transitionType: .presentFullScreenNavigation)
    }
    
    func fetchRealm() {
        tasks = ShoppingModelRepository.shared.fetch()
    }
    
}

extension CalendarViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ShoppingListTableViewCell.reuseIdentifier, for: indexPath) as? ShoppingListTableViewCell else { return UITableViewCell() }
        
        cell.titleLabel.text = tasks[indexPath.row].shoppingTitle
        cell.dateLabel.text = String(describing: tasks[indexPath.row].date)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            if let task = tasks?[indexPath.row] {
                ShoppingModelRepository.shared.delete(task: task)
            }
        }
        
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
}
