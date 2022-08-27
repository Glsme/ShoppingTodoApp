//
//  GreenColorLabel.swift
//  ShoppingTodoApp
//
//  Created by Seokjune Hong on 2022/08/27.
//

import UIKit

class GreenColorLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setView() {
        layer.cornerRadius = 10
        backgroundColor = .lightGreen
        clipsToBounds = true
    }
}
