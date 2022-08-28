//
//  ImageCollectionViewCell.swift
//  ShoppingTodoApp
//
//  Created by Seokjune Hong on 2022/08/27.
//

import UIKit
import SnapKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    let searchedImageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .darkGray
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configureUI() {
        self.addSubview(searchedImageView)
    }
    
    func setConstraints() {
        searchedImageView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
    }
}
