//
//  HomePageViewController.swift
//  Project
//
//  Created by 郑键 on 2017/6/7.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

class HomePageViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    lazy var testView: AnimatedView = {
        let testView = AnimatedView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        testView.backgroundColor = UIColor.white
        return testView
    }()
    
    lazy var tableView: BaseTableView = {
        
        let tableView = BaseTableView(frame: self.view.bounds, style: UITableViewStyle.plain)
        tableView.delegate = self
        tableView.dataSource = self
        
        return tableView
    }()
    
    func update(){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupCustomUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //MARK: - Super Func
    override func setupCustomUI() {
        super.setupCustomUI()
        
        //view.addSubview(tableView)
        
        ///测试代码
        
        view.addSubview(testView)
        testView.center = view.center
        ///测试代码
        
        ///旋转动画
        //rorateAnimation(holdView: testView)
        
        //startDpLink()
    }
    
    //MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") {
            return cell
        }else{
            return BaseTableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        }
    }
}
