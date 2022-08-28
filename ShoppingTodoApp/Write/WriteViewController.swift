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
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "저장", style: .plain, target: self, action: #selector(saveButtonClicked))
        self.navigationItem.rightBarButtonItem?.tintColor = .black
        mainView.selectButton.addTarget(self, action: #selector(selectButtonClicekd), for: .touchUpInside)
    }
    
    @objc func closeButtonClicked() {
        dismiss(animated: true)
    }
    
    @objc func saveButtonClicked() {
        guard let title = mainView.titleTextField.text, !mainView.titleTextField.text!.isEmpty else { return }
        
        let task = ShoppingModel(shoppingTitle: title, date: Date(), check: false, content: mainView.detailTextView.text)
        ShoppingModelRepository.shared.write(task: task)
        
        dismiss(animated: true)
    }
    
    @objc func selectButtonClicekd() {
        transViewController(ViewController: ImageSearchViewController(), transitionType: .presentFullScreenNavigation)
    }
}
