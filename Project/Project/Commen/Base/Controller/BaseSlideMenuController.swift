//
//  BaseSlideMenuController.swift
//  Project
//
//  Created by 郑键 on 17/6/5.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

@objc (BaseSlideMenuController)
class BaseSlideMenuController: SlideMenuController {
    
    ///重载构造函数
    convenience init() {
        
        self.init(nibName: nil, bundle: nil)
        
        ///赋值主ViewController，leftViewController，rightViewController
        ///子类可重载当前方法，进行不同的配置
        
        ///主控制器
        let mainViewController = BaseNavigationController(rootViewController: HomePageViewController())
        
        ///左侧控制器
        let leftViewController = UIViewController()
        leftViewController.view.backgroundColor = UIColor.yellow
        
        ///右侧控制器
        let rightViewController = UIViewController()
        rightViewController.view.backgroundColor = UIColor.blue
        
        
        self.mainViewController = mainViewController
        self.leftViewController = leftViewController
        self.rightViewController = rightViewController
        
        initView()
    }
}
