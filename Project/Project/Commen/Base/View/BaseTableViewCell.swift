//
//  BaseTableViewCell.swift
//  Project
//
//  Created by 郑键 on 17/6/2.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

class BaseTableViewCell: UITableViewCell {
    
    lazy var bgView: BaseView = {
        let bgView = BaseView(frame: self.bounds)
        return bgView
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundView = bgView
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundView = bgView
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
