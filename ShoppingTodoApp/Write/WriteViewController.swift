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

    }
    
    override func configureUI() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked))
        self.navigationItem.leftBarButtonItem?.tintColor = .black
        mainView.selectButton.addTarget(self, action: #selector(selectButtonClicekd), for: .touchUpInside)
    }
    
    @objc func closeButtonClicked() {
        dismiss(animated: true)
    }
    
    @objc func selectButtonClicekd() {
        transViewController(ViewController: ImageSearchViewController(), transitionType: .presentFullScreenNavigation)
    }
}
