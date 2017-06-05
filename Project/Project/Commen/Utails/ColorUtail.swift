//
//  ColorUtail.swift
//  Project
//
//  Created by 郑键 on 17/6/5.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

class ColorUtail {
    
    ///透明色
    lazy var color0: UIColor = {
        let color = UIColor.clear
        return color
    }()
    
    ///白色
    lazy var color1: UIColor = {
        let color = UIColor.white
        return color
    }()
    
    ///黑色
    lazy var color2: UIColor = {
        let color = UIColor.black
        return color
    }()
    
    ///单利模型
    static let utail = ColorUtail.init()
    
    ///重写父类初始化方法
    required init() {
        
    }
}
