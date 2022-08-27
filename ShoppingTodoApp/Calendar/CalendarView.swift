//
//  CalendarView.swift
//  ShoppingTodoApp
//
//  Created by Seokjune Hong on 2022/08/27.
//

import UIKit
import SnapKit
import FSCalendar

class CalendarView: BaseView {
    
    let calendar: FSCalendar = {
        let view = FSCalendar()
        view.backgroundColor = .white
        view.scrollDirection = .vertical
        view.locale = Locale(identifier: "ko_KR")
        return view
    }()
    
    let shoppingListTableView: UITableView = {
        let view = UITableView()
        
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func configure() {
        [calendar, shoppingListTableView].forEach {
            self.addSubview($0)
        }
    }
    
    override func setConstraints() {
        calendar.snp.makeConstraints { make in
            make.leading.top.trailing.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(self.safeAreaLayoutGuide).multipliedBy(0.45)
        }
        
        shoppingListTableView.snp.makeConstraints { make in
            make.leading.bottom.trailing.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(self.safeAreaLayoutGuide).multipliedBy(0.5)
        }
    }
}
