//
//  UserDiary.swift
//  ShoppingTodoApp
//
//  Created by Seokjune Hong on 2022/08/28.
//

import Foundation
import RealmSwift

class ShoppingModel: Object {
    @Persisted var shoppingTitle: String
    @Persisted var date = Date()
    @Persisted var check: Bool
    @Persisted var content: String?
    
    @Persisted(primaryKey: true) var objectId: ObjectId
    
    convenience init(shoppingTitle: String, date: Date, check: Bool, content: String?) {
        self.init()
        self.shoppingTitle = shoppingTitle
        self.date = date
        self.check = false
        self.content = content
    }
}
