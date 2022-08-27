//
//  WriteView.swift
//  ShoppingTodoApp
//
//  Created by Seokjune Hong on 2022/08/27.
//

import UIKit
import SnapKit

class WriteView: BaseView {
    
    let writedImageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 10
        return view
    }()
    
    let selectButton: UIButton = {
        let view = UIButton()
        view.layer.cornerRadius = 25
        view.setImage(UIImage(systemName: "photo"), for: .normal)
        view.backgroundColor = .darkGray
        view.tintColor = .white
        return view
    }()
    
    let titleLabel: GreenColorLabel = {
        let view = GreenColorLabel()
        
        return view
    }()
    
    let detailTextView: UITextView = {
        let view = UITextView()
        view.layer.borderColor = UIColor.green.cgColor
        view.layer.borderWidth = 3
        view.layer.cornerRadius = 10
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func configure() {
        [writedImageView, selectButton, titleLabel, detailTextView].forEach {
            self.addSubview($0)
        }
    }
    
    override func setConstraints() {
        writedImageView.snp.makeConstraints { make in
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.top.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.width.height.equalTo(self.safeAreaLayoutGuide.snp.width).multipliedBy(0.7)
        }
        
        selectButton.snp.makeConstraints { make in
            make.trailing.equalTo(writedImageView.snp.trailing).offset(-5)
            make.bottom.equalTo(writedImageView.snp.bottom).offset(-5)
            make.height.width.equalTo(50)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(44)
            make.width.equalTo(writedImageView.snp.width)
            make.top.equalTo(writedImageView.snp.bottom).offset(20)
        }
        
        detailTextView.snp.makeConstraints { make in
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.leading.trailing.equalTo(writedImageView)
            make.bottom.equalTo(self.safeAreaLayoutGuide)
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
        }
    }
}
