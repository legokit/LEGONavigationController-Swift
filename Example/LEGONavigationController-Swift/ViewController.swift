//
//  ViewController.swift
//  LEGONavigationController-Swift
//
//  Created by 564008993@qq.com on 07/28/2020.
//  Copyright (c) 2020 564008993@qq.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        legoNaviationParam.backgroundColor = UIColor.gray

        self.navigationView().setTitle(text: "1231")

        self.navigationView().setRightButton(text: "123123") {

        }
        self.navigationView().setBackButton {

        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

