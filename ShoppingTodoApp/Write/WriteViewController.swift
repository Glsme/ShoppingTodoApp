//
//  WriteViewController.swift
//  ShoppingTodoApp
//
//  Created by Seokjune Hong on 2022/08/27.
//

import UIKit

class WriteViewController: BaseViewController {
    
    let mainView = WriteView()
    
    override func loadView() {
        self.view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func configureUI() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked))
        self.navigationItem.leftBarButtonItem?.tintColor = .black
    }
    
    @objc func closeButtonClicked() {
        dismiss(animated: true)
    }
}
