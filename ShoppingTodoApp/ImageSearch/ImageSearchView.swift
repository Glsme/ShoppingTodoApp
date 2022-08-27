//
//  ImageSearchView.swift
//  ShoppingTodoApp
//
//  Created by Seokjune Hong on 2022/08/27.
//

import UIKit
import SnapKit

class ImageSearchView: BaseView {
    
    let imageSearchBar: UISearchBar = {
        let view = UISearchBar()
        
        return view
    }()
    
    let imageCollectionView: UICollectionView = {
        let view = UICollectionView(frame: .zero, collectionViewLayout: searchCollectionViewLayout())
        view.backgroundColor = .lightGray
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func configure() {
        [imageSearchBar, imageCollectionView].forEach {
            self.addSubview($0)
        }
    }
    
    override func setConstraints() {
        imageSearchBar.snp.makeConstraints { make in
            make.top.leading.trailing.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(44)
        }
        
        imageCollectionView.snp.makeConstraints { make in
            make.leading.bottom.trailing.equalTo(self.safeAreaLayoutGuide)
            make.top.equalTo(imageSearchBar.snp.bottom)
        }
    }
    
    static func searchCollectionViewLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        let spacing:CGFloat = 8
        let width = UIScreen.main.bounds.width - (spacing * 4)
        layout.itemSize = CGSize(width: width / 3, height: width / 3)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        return layout
    }
}
