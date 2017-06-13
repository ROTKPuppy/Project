//
//  HomePageViewController.swift
//  Project
//
//  Created by 郑键 on 2017/6/7.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

class HomePageViewController: BaseViewController {
    
    //MARK: - Properties
    
    lazy var modules: Array = { () -> [Any] in
        let modeules = [1, 2, 3]
        return modeules
    }()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCustomUI()
        setupDefaultNavigationBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //MARK: - Super Func
    
    override func setupCustomUI() {
        super.setupCustomUI()
        
        view.backgroundColor = UIColor.red
    }
    
    override func setupDefaultNavigationBar() {
        super.setupDefaultNavigationBar()
        
    }
}
