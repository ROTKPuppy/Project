//
//  BaseWebViewController.swift
//  Project
//
//  Created by 郑键 on 17/6/2.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit
import WebKit

class BaseWebViewController: UIViewController {

    override func loadView() {
        view = WKWebView(frame: UIScreen.main.bounds);
    }
    
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
