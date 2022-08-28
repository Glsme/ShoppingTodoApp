//
//  ShoppingModelRepository.swift
//  ShoppingTodoApp
//
//  Created by Seokjune Hong on 2022/08/28.
//

import UIKit
import RealmSwift

class ShoppingModelRepository {
    
    static let shared = ShoppingModelRepository()
    
    private init() { }
    
    let localRealm = try! Realm()
    
    func fetch() -> Results<ShoppingModel> {
        return localRealm.objects(ShoppingModel.self).sorted(byKeyPath: "date", ascending: false)
    }
    
    func write(task: ShoppingModel) {
        try! localRealm.write {
            localRealm.add(task)
        }
    }
    
    func delete(task: ShoppingModel) {
        try! localRealm.write {
            localRealm.delete(task)
        }
    }
    
    func deleteAll() {
        try! localRealm.write {
            localRealm.deleteAll()
        }
    }
}
