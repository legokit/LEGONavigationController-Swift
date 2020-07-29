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

public let legoNaviationIsPhoneX: Bool = {
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

public let legoNaviationParam = LEGONaviationParameter()

public let legoNavitionHeight = legoNaviationParam.naviationMargan + legoNaviationParam.naviationBar

public class LEGONaviationParameter: NSObject {
    
    public var naviationMargan = legoNaviationIsPhoneX ? 44 : 20
    public var naviationBar = 44
    
    public var backgroundColor = UIColor.black
    // title
    public var titleColor = UIColor.white
    public var titleFont = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
    // left
    public var backIcon = UIImage.init(named: "LEGONavigationController.bundle/icon_back_white")
    public var backSize = CGSize.init(width: 44, height: 44)
    public var leftColor = UIColor.white
    public var leftFont = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
    
    // right
    public var rightColor = UIColor.white
    public var rightFont = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
    
    
    
}
