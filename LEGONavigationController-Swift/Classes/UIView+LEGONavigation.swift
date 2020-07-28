//
//  UIView+LEGONavigation.swift
//  lego-camera-ios
//
//  Created by 杨庆人 on 2020/7/28.
//  Copyright © 2020 杨庆人. All rights reserved.
//

import Foundation
import UIKit

//extension UIView {
    
//    public class func initializeMethod() {
//
//        let originalSelector = #selector(UIView.addSubview(_:))
//        let swizzledSelector = #selector(UIView.easyAddSubview(_:))
//
//        let originalMethod = class_getInstanceMethod(self, originalSelector)
//        let swizzledMethod = class_getInstanceMethod(self, swizzledSelector)
//
//        let didAddMethod: Bool = class_addMethod(self, originalSelector, method_getImplementation(swizzledMethod!), method_getTypeEncoding(swizzledMethod!))
//
//        if didAddMethod {
//            class_replaceMethod(self, swizzledSelector, method_getImplementation(originalMethod!), method_getTypeEncoding(originalMethod!))
//        } else {
//            method_exchangeImplementations(originalMethod!, swizzledMethod!)
//        }
//
//
//    }
//
//    @objc func easyAddSubview(_ view: UIView) {
//        var legoNavigationView: UIView?
//        for view in self.subviews {
//            if view.isKind(of: LEGONavigationView.self) {
//                legoNavigationView = view
//                break
//            }
//        }
//        if let navigationView = legoNavigationView {
//            self.bringSubviewToFront(navigationView)
//        }
//
//        self.easyAddSubview(view)
//    }

//}
