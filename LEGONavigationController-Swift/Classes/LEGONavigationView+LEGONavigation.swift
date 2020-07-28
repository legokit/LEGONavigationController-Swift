//
//  LEGONavigationView+LEGONavigation.swift
//  lego-camera-ios
//
//  Created by 杨庆人 on 2020/7/28.
//  Copyright © 2020 杨庆人. All rights reserved.
//

import Foundation
import UIKit

extension LEGONavigationView {
    
    @discardableResult
    public func setTitle(text: String?) -> UILabel {
        titleLabel.text = text
        return titleLabel
    }
    
    @discardableResult
    public func setTitleAttributedString(attributedString: NSAttributedString?) -> UILabel {
        titleLabel.attributedText = attributedString
        return titleLabel
    }
    
    @discardableResult
    public func setRightButton(text: String?, callback: LEGONavigationCallback?) -> LEGONavigationButton {
        rightButton.setTitle(text, for: .normal)
        rightCallback = callback
        return rightButton
    }
    
    @discardableResult
    public func setRightButtonAttributedString(text: NSAttributedString?, callback: LEGONavigationCallback?) -> LEGONavigationButton {
        rightButton.setAttributedTitle(text, for: .normal)
        rightCallback = callback
        return rightButton
    }
    
    @discardableResult
    public func setLeftButton(text: String?, callback: LEGONavigationCallback?) -> LEGONavigationButton {
        leftButton.setTitle(text, for: .normal)
        leftCallback = callback
        leftButton.isHidden = false
        backButton.isHidden = true
        return rightButton
    }
    
    @discardableResult
    public func setLeftButtonAttributedString(text: NSAttributedString?, callback: LEGONavigationCallback?) -> LEGONavigationButton {
        leftButton.setAttributedTitle(text, for: .normal)
        leftCallback = callback
        leftButton.isHidden = false
        backButton.isHidden = true
        return leftButton
    }
    
    @discardableResult
    public func setBackButton(callback: LEGONavigationCallback?) -> LEGONavigationButton {
        leftButton.isHidden = true
        backButton.isHidden = false
        leftCallback = callback
        return leftButton
    }
    
    @discardableResult
    public func setBackButton(image: UIImage?, callback: LEGONavigationCallback?) -> LEGONavigationButton {
        leftButton.isHidden = true
        backButton.isHidden = false
        backButton.setImage(image, for: .normal)
        leftCallback = callback
        return leftButton
    }
}
