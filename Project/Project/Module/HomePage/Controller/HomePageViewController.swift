//
//  HomePageViewController.swift
//  Project
//
//  Created by 郑键 on 2017/6/7.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

class HomePageViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: - Properties
    lazy var tableView: BaseTableView = {
        
        let tableView = BaseTableView(frame: self.view.bounds, style: UITableViewStyle.plain)
        tableView.delegate = self
        tableView.dataSource = self
        
        return tableView
    }()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupCustomUI()
        setupDefaultNavigationBar()
        registerSubViews()
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
        
        view.addSubview(tableView)
    }
    
    override func setupDefaultNavigationBar() {
        super.setupDefaultNavigationBar()
        
    }
    
    //MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: kHomePageModuleCellReuseIdentify,
                                                 for: indexPath)
        return cell
    }
    
    //MARK: - Other
    
    func registerSubViews() -> () {
        tableView.register(HomePageModuleCell.classForCoder(),
                           forCellReuseIdentifier: kHomePageModuleCellReuseIdentify)
    }
}
