//
//  LEGONavigationComman.swift
//  lego-camera-ios
//
//  Created by 杨庆人 on 2020/7/28.
//  Copyright © 2020 杨庆人. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

let legoNaviationIsPhoneX: Bool = {
        var isPhoneX = false
        if #available(iOS 11.0, *) {
            let windows = UIApplication.shared.windows
            if windows.count > 0 {
                let window = windows.first
                if window?.safeAreaInsets.bottom ?? 0.0 > 0.0 {
                    isPhoneX = true
                }
            }
            else {
                let window = UIApplication.shared.keyWindow
                if window?.safeAreaInsets.bottom ?? 0.0 > 0.0 {
                    isPhoneX = true
                }
            }
        }
        return isPhoneX
}()

let legoNaviationParam = LEGONaviationParameter()

let legoNavitionHeight = legoNaviationParam.naviationMargan + legoNaviationParam.naviationSautusBar

class LEGONaviationParameter: NSObject {
    
    var naviationMargan = legoNaviationIsPhoneX ? 44 : 20
    var naviationSautusBar = 44
    
    var backgroundColor = UIColor.black
    // title
    var titleColor = UIColor.white
    var titleFont = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
    // left
    var backIcon = UIImage.init(named: "LEGONavigationController.bundle/icon_back_white")
    var backSize = CGSize.init(width: 44, height: 44)
    var leftColor = UIColor.white
    var leftFont = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
    
    // right
    var rightColor = UIColor.white
    var rightFont = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
    
    
    
}
