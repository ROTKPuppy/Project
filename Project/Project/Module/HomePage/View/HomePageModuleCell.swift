//
//  HomePageModuleCell.swift
//  Project
//
//  Created by 郑键 on 2017/6/13.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

///重用标志
let kHomePageModuleCellReuseIdentify = "kHomePageModuleCellReuseIdentify"

class HomePageModuleCell: BaseTableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
