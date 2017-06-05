//
//  BaseTabBarController.swift
//  Project
//
//  Created by 郑键 on 17/6/2.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addAllChildViewController()
        setupCustomUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}

///添加子控制器
extension BaseTabBarController {
    
    func addAllChildViewController() {
        
        ///数据数组
        let modules = [["title":"首页",
                        "imageFilePath":ProjectConfigurationConst.RESOURCES_DEFAULT_IMAGE_TABBAR,
                        "imageNamed":"tabBar_home",
                        "viewController":"BaseViewController"],
                       ["title":"Finder",
                        "imageFilePath":ProjectConfigurationConst.RESOURCES_DEFAULT_IMAGE_TABBAR,
                        "imageNamed":"tabBar_finder",
                        "viewController":"BaseViewController"],
                       ["title":"",
                        "imageFilePath":ProjectConfigurationConst.RESOURCES_DEFAULT_IMAGE_TABBAR,
                        "imageNamed":"tabBar_output",
                        "viewController":"BaseViewController"],
                       ["title":"消息",
                        "imageFilePath":ProjectConfigurationConst.RESOURCES_DEFAULT_IMAGE_TABBAR,
                        "imageNamed":"tabBar_message",
                        "viewController":"BaseViewController"],
                       ["title":"我的",
                        "imageFilePath":ProjectConfigurationConst.RESOURCES_DEFAULT_IMAGE_TABBAR,
                        "imageNamed":"tabBar_mine",
                        "viewController":"BaseViewController"]]
        
        ///遍历添加控制器
        for module in modules {
            addChildViewController(module["title"]!,
                                   imageFilePath: module["imageFilePath"]!,
                                   iconNamed: module["imageNamed"]!,
                                   viewControllerName: module["viewController"]!)
        }
    }
    
    ///添加单个控制器
    func addChildViewController(_ titleKeyString: String,
                                imageFilePath: String,
                                iconNamed: String,
                                viewControllerName: String) {
        
        ///初始化控制器
        if let ViewControllerClass = NSClassFromString(viewControllerName) as? UIViewController.Type {
            let viewController = ViewControllerClass.init()
            
            ///嵌入导航控制器
            let navigationController = BaseNavigationController(rootViewController: viewController)
            
            ///配置样式
            navigationController.setupParameter(titleKeyString,
                                                imageFilePath: imageFilePath,
                                                iconImageNamed: iconNamed)
            
            ///加入到根控制器
            addChildViewController(navigationController)
        }
    }
}

///自定义样式配置
extension BaseTabBarController {

    func setupCustomUI() -> () {
        
        tabBar.tintColor = UIColor.red
    }
}
