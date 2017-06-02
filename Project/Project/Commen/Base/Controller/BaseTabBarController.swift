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
        
        let bundle = Bundle()
        if let bundlePath = bundle.path(forResource: "Modules.plist", ofType: nil) {
            let bundlePathURL = URL(fileURLWithPath: bundlePath)
            do {
                let modulesData = try Data(contentsOf: bundlePathURL)
                let modulesDict = NSKeyedUnarchiver.unarchiveObject(with: modulesData)! as! NSDictionary
                for module in modulesDict.value(forKey: "ChildViewControllersArray")! as! NSArray {
                    
                }
                
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func addChildViewController(_ childController: UIViewController, iconNamed: String) {
        
    }
}
