//
//  LEGONavigationView.swift
//  lego-camera-ios
//
//  Created by 杨庆人 on 2020/7/28.
//  Copyright © 2020 杨庆人. All rights reserved.
//

import UIKit

public typealias LEGONavigationCallback  = () -> Void

public class LEGONavigationView: UIView {

    public var navigationBar = UIView()
        
    public lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = legoNaviationParam.titleColor
        label.font = legoNaviationParam.titleFont
        
        return label
    }()
    
    public lazy var rightButton: LEGONavigationButton = {
        let button = LEGONavigationButton()
        button.setTitleColor(legoNaviationParam.rightColor, for: UIControl.State.normal)
        button.titleLabel?.font = legoNaviationParam.rightFont
        button.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        return button
    }()
   
    public lazy var leftButton: LEGONavigationButton = {
        let button = LEGONavigationButton()
        button.setTitleColor(legoNaviationParam.rightColor, for: UIControl.State.normal)
        button.titleLabel?.font = legoNaviationParam.rightFont
        button.addTarget(self, action: #selector(leftButtonClick), for: .touchUpInside)
        button.isHidden = true
        return button
    }()
    
    public lazy var backButton: LEGONavigationButton = {
        let button = LEGONavigationButton()
        button.setImage(legoNaviationParam.backIcon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.addTarget(self, action: #selector(leftButtonClick), for: .touchUpInside)
        return button
    }()
    
    var leftCallback: LEGONavigationCallback?
    var rightCallback: LEGONavigationCallback?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setNavigationView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setNavigationView() {
        self.backgroundColor = legoNaviationParam.backgroundColor
        
        self.addSubview(navigationBar)
        navigationBar.snp.makeConstraints { (make) in
            make.bottom.left.right.equalTo(self)
            make.top.equalTo(self).offset(legoNaviationParam.naviationMargan)
        }
        
        self.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(navigationBar.snp.centerX)
            make.centerY.equalTo(navigationBar.snp.centerY)
        }
        
        self.addSubview(rightButton)
        rightButton.snp.makeConstraints { (make) in
            make.right.equalTo(self).offset(-legoNaviationParam.rightMargan)
            make.centerY.equalTo(self.navigationBar.snp.centerY)
        }
        
        self.addSubview(leftButton)
        leftButton.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(legoNaviationParam.leftMargan)
            make.centerY.equalTo(self.navigationBar.snp.centerY)
        }
        
        self.addSubview(backButton)
        backButton.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(legoNaviationParam.backLeftMargan)
            make.centerY.equalTo(self.navigationBar.snp.centerY)
            make.size.equalTo(legoNaviationParam.backSize)
        }
    }
    
    @objc func rightButtonClick() {
        if let block = rightCallback {
            block()
        }
    }
    
    @objc func leftButtonClick() {
        if let block = leftCallback {
            block()
        }
    }
}

public class LEGONavigationButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        self.addTarget(self, action: #selector(buttonDidBeTouchDown), for: UIControl.Event.touchDown)
        self.addTarget(self, action: #selector(buttonDidBeTouchUpInside), for: UIControl.Event.touchUpOutside)
        self.addTarget(self, action: #selector(buttonDidBeTouchUpInside), for: UIControl.Event.touchUpInside)
        self.addTarget(self, action: #selector(buttonDidBeTouchUpInside), for: UIControl.Event.touchCancel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func buttonDidBeTouchDown() {
        self.alpha = 0.3
    }
    
    @objc func buttonDidBeTouchUpInside() {
        self.alpha = 1
    }
    
    public override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        var bounds = self.bounds
        bounds = CGRect.init(x: bounds.origin.x - 20, y: bounds.origin.y - 10, width: bounds.size.width + 40, height: bounds.size.height + 20)
        return bounds.contains(point)
    }
}
