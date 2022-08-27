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
        view.layer.cornerRadius = 5
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func configure() {
        [writedImageView, titleLabel, detailTextView].forEach {
            self.addSubview($0)
        }
    }
    
    override func setConstraints() {
        writedImageView.snp.makeConstraints { make in
            make.centerX.equalTo(self.safeAreaLayoutGuide)
            make.top.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.width.height.equalTo(self.safeAreaLayoutGuide.snp.width).multipliedBy(0.6)
        }
    }
}
