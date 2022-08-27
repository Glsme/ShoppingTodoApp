//
//  ShoppingListTableViewCell.swift
//  ShoppingTodoApp
//
//  Created by Seokjune Hong on 2022/08/27.
//

import UIKit

class ShoppingListTableViewCell: UITableViewCell {
    
    let checkButton: UIButton = {
        let view = UIButton()
        
        return view
    }()
    
    let titleLabel: UILabel = {
        let view = UILabel()
        return view
    }()
    
    let dateLabel: UILabel = {
        let view = UILabel()
        return view
    }()
    
    let imagePreview: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureUI()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    func configureUI() {
        
    }
    
    func setConstraints() {
        
    }
}
