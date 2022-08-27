//
//  SearchViewController.swift
//  ShoppingTodoApp
//
//  Created by Seokjune Hong on 2022/08/27.
//

import UIKit

class SearchViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(#function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function, "SearchViewController")
    }
}
