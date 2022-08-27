//
//  ShoppingListTableViewCell.swift
//  ShoppingTodoApp
//
//  Created by Seokjune Hong on 2022/08/27.
//

import UIKit
import SnapKit

class ShoppingListTableViewCell: UITableViewCell {
    
    let checkButton: UIButton = {
        let view = UIButton()
        view.tintColor = .black
        view.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        
        return view
    }()
    
    let titleLabel: GreenColorLabel = {
        let view = GreenColorLabel()
        return view
    }()
    
    let dateLabel: GreenColorLabel = {
        let view = GreenColorLabel()
        return view
    }()
    
    let imagePreview: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .lightGray
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
        [checkButton, titleLabel, dateLabel, imagePreview].forEach {
            self.addSubview($0)
        }
    }
    
    func setConstraints() {
        checkButton.snp.makeConstraints { make in
            make.leading.equalTo(self.safeAreaLayoutGuide)
            make.height.width.equalTo(80)
            make.centerY.equalTo(self.snp.centerY)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(checkButton.snp.top)
            make.leading.equalTo(checkButton.snp.trailing)
            make.height.equalTo(40)
            make.width.equalTo(self).multipliedBy(0.45)
        }
        
        dateLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.leading.equalTo(titleLabel.snp.leading)
            make.height.equalTo(titleLabel.snp.height)
            make.width.equalTo(titleLabel.snp.width)
        }
        
        imagePreview.snp.makeConstraints { make in
            make.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing).offset(-10)
            make.height.width.equalTo(100)
            make.centerY.equalTo(self.safeAreaLayoutGuide.snp.centerY)
        }
    }
}
