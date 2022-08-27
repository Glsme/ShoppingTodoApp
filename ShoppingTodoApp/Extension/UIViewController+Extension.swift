//
//  UIViewController+Extension.swift
//  ShoppingTodoApp
//
//  Created by Seokjune Hong on 2022/08/27.
//

import UIKit

extension UIViewController {
    enum TransitionType {
        case push
        case present
        case presentNavigation
        case presentFullScreenNavigation
    }
    
    ///Trans ViewController: Animation Default true
    func transViewController<T: UIViewController>(ViewController vc: T,transitionType: TransitionType) {
        switch transitionType {
        case .push:
            navigationController?.pushViewController(vc, animated: true)
        case .present:
            present(vc, animated: true)
        case .presentNavigation:
            let navi = UINavigationController(rootViewController: vc)
            present(navi, animated: true)
        case .presentFullScreenNavigation:
            let navi = UINavigationController(rootViewController: vc)
            navi.modalPresentationStyle = .fullScreen
            present(navi, animated: true)
        }
    }
}
