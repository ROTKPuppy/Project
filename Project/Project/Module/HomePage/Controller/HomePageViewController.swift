//
//  HomePageViewController.swift
//  Project
//
//  Created by 郑键 on 2017/6/7.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

class HomePageViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    lazy var tableView: BaseTableView = {
        
        let tableView = BaseTableView(frame: self.view.bounds, style: UITableViewStyle.plain)
        tableView.delegate = self
        tableView.dataSource = self
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupCustomUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //MARK: - Super func
    override func setupCustomUI() {
        super.setupCustomUI()
        
        view.addSubview(tableView)
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
