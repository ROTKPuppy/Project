//
//  BaseNavigationController.swift
//  Project
//
//  Created by 郑键 on 17/6/2.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

///配置样式
extension BaseNavigationController {
    
    func setupParameter(_ titleKeyString: String,
                        imageFilePath: String,
                        iconImageNamed: String) -> () {
        
        tabBarItem.title = StringUtail.String(titleKeyString)
        tabBarItem.image = ImageUtail.bundleImagesArray(imageFilePath, imageNamed: iconImageNamed).first
        tabBarItem.selectedImage = ImageUtail.bundleImagesArray(imageFilePath, imageNamed: iconImageNamed).last
    }
}
