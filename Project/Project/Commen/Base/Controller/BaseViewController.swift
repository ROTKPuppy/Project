//
//  BaseViewController.swift
//  Project
//
//  Created by 郑键 on 17/6/2.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

@objc (BaseViewController)
class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = ColorUtail.utail.color1
        
        let button = BaseButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        view.addSubview(button)
        button.setTitle(StringUtail.String("PUBLIC_CANCEL_STRINGKEY"), for: .normal)
        button.setTitleColor(ColorUtail.utail.color2, for: .normal)
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
