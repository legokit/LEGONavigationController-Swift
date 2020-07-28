//
//  LEGONavigationController.swift
//  lego-camera-ios
//
//  Created by 杨庆人 on 2020/7/28.
//  Copyright © 2020 杨庆人. All rights reserved.
//

import UIKit

class LEGONavigationController: UINavigationController {

    let navigationView: LEGONavigationView = {
        let view = LEGONavigationView(frame: CGRect.init(x: 0, y: 0, width: Int(UIScreen.main.bounds.size.width), height: legoNavitionHeight))

        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.isNavigationBarHidden = false
        self.navigationBar.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        guard self.viewControllers.contains(viewController) == false else {
            return
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



