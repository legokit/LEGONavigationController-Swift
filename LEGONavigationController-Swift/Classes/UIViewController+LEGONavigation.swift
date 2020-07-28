//
//  UIViewController+LEGONavigation.swift
//  lego-camera-ios
//
//  Created by 杨庆人 on 2020/7/28.
//  Copyright © 2020 杨庆人. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    fileprivate struct LEGONavigationKeys {
        static var navigationView: UIView = UIView()
    }
    
    public func navigationView() -> LEGONavigationView {
        var navigationView = objc_getAssociatedObject(self, &LEGONavigationKeys.navigationView)
        if navigationView == nil {
            if self.navigationController == nil {
                print("self.navigationController cant be nil!")
            }
            navigationView = LEGONavigationView(frame: CGRect.init(x: 0, y: 0, width: Int(UIScreen.main.bounds.size.width), height: legoNavitionHeight))
            self.willChangeValue(forKey: NSStringFromClass(LEGONavigationView.self))
            objc_setAssociatedObject(self, &LEGONavigationKeys.navigationView, navigationView, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            self.view.addSubview(navigationView as! UIView)
        }
        return navigationView as! LEGONavigationView
    }
    
    /// 由于 Swift 的方法替换没有很好的支持，故需要 addsubview 最后显示调用 bringSubviewToFront
    public func bringNavigationToFront() {
        self.view.bringSubviewToFront(self.navigationView())
    }
}
