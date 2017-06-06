//
//  ColorUtail.swift
//  Project
//
//  Created by 郑键 on 17/6/5.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit
import YYKit

class ColorUtail {
    
    ///单利模型
    static let utail = ColorUtail.init()
    
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
    
    ///DBEBE8
    lazy var color3: UIColor = {
        let color = UIColor(hexString: self.c3)
        return color!
    }()
    
    ///30343F
    lazy var color4: UIColor = {
        let color = UIColor(hexString: self.c4)
        return color!
    }()
    
    ///1B1D23
    lazy var color5: UIColor = {
        let color = UIColor(hexString: self.c5)
        return color!
    }()
    
    ///535D67
    lazy var color6: UIColor = {
        let color = UIColor(hexString: self.c6)
        return color!
    }()
    
    ///BBBFC3
    lazy var color7: UIColor = {
        let color = UIColor(hexString: self.c7)
        return color!
    }()
    
    ///8AB1AA
    lazy var color8: UIColor = {
        let color = UIColor(hexString: self.c8)
        return color!
    }()
    
    ///F2BEC7
    lazy var color9: UIColor = {
        let color = UIColor(hexString: self.c9)
        return color!
    }()
    
    ///7A8A94
    lazy var color10: UIColor = {
        let color = UIColor(hexString: self.c10)
        return color!
    }()
    
    ///F36E6E
    lazy var color11: UIColor = {
        let color = UIColor(hexString: self.c11)
        return color!
    }()
    
    ///0xc1c1c1
    lazy var color12: UIColor = {
        let color = UIColor(hexString: self.c12)
        return color!
    }()
    
    ///f8f8f8
    lazy var color13: UIColor = {
        let color = UIColor(hexString: self.c13)
        return color!
    }()
    
    ///F4F4F4
    lazy var color14: UIColor = {
        let color = UIColor(hexString: self.c14)
        return color!
    }()
    
    ///ff8197
    lazy var color15: UIColor = {
        let color = UIColor(hexString: self.c15)
        return color!
    }()
    
    ///d8d8d8
    lazy var color16: UIColor = {
        let color = UIColor(hexString: self.c16)
        return color!
    }()
    
    ///7D9F99
    lazy var color17: UIColor = {
        let color = UIColor(hexString: self.c17)
        return color!
    }()
    
    ///E1E1E1
    lazy var color18: UIColor = {
        let color = UIColor(hexString: self.c18)
        return color!
    }()
    
    ///999A9C
    lazy var color19: UIColor = {
        let color = UIColor(hexString: self.c19)
        return color!
    }()
    
    ///F1F3F4
    lazy var color20: UIColor = {
        let color = UIColor(hexString: self.c20)
        return color!
    }()
    
    ///FF595E
    lazy var color21: UIColor = {
        let color = UIColor(hexString: self.c21)
        return color!
    }()
    
    ///FFD251
    lazy var color22: UIColor = {
        let color = UIColor(hexString: self.c22)
        return color!
    }()
    
    ///3F4850
    lazy var color23: UIColor = {
        let color = UIColor(hexString: self.c23)
        return color!
    }()
    
    ///969696
    lazy var color24: UIColor = {
        let color = UIColor(hexString: self.c24)
        return color!
    }()
    
    ///DBEBEB
    lazy var color25: UIColor = {
        let color = UIColor(hexString: self.c25)
        return color!
    }()
    
    ///999999
    lazy var color26: UIColor = {
        let color = UIColor(hexString: self.c26)
        return color!
    }()
    
    ///333333
    lazy var color27: UIColor = {
        let color = UIColor(hexString: self.c27)
        return color!
    }()
    
    ///重写父类初始化方法
    required init() {
        
    }
    
    private let c3 = "DBEBE8"
    private let c4 = "30343F"
    private let c5 = "1B1D23"
    private let c6 = "535D67"
    private let c7 = "BBBFC3"
    private let c8 = "8AB1AA"
    private let c9 = "F2BEC7"
    private let c10 = "7A8A94"
    private let c11 = "F36E6E"
    private let c12 = "0xc1c1c1"
    private let c13 = "f8f8f8"
    private let c14 = "F4F4F4"
    private let c15 = "ff8197"
    private let c16 = "d8d8d8"
    private let c17 = "7D9F99"
    private let c18 = "E1E1E1"
    private let c19 = "999A9C"
    private let c20 = "F1F3F4"
    private let c21 = "FF595E"
    private let c22 = "FFD251"
    private let c23 = "3F4850"
    private let c24 = "969696"
    private let c25 = "DBEBEB"
    private let c26 = "999999"
    private let c27 = "333333"
}
