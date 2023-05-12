//
//  UIViewController+Utils.swift
//  Bankey
//
//  Created by Caleb Danielsen on 12.05.2023.
//

import UIKit

extension UIViewController {
    func setStatusBar() {
        let windowScene = view.window?.windowScene
        let statusBarSize = windowScene?.statusBarManager?.statusBarFrame.size
        let frame = CGRect(origin: .zero, size: statusBarSize ?? CGSizeZero)
        let statusbarView = UIView(frame: frame)
        statusbarView.backgroundColor = appColor
        view.addSubview(statusbarView)
    }
    
    func setTabBarImage(imageName: String, title: String) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}
