//
//  SizeUtail.swift
//  Project
//
//  Created by 郑键 on 2017/6/7.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

struct SizeUtail {
    
    ///尺寸是配
    static func adjustFloat(float: CGFloat) -> CGFloat {
        
        if ProjectConfigurationConst.SCREEN_SCALE == 1 {
            return ProjectConfigurationConst.SCREEN_WIDTH / 375 * float
        } else if ProjectConfigurationConst.SCREEN_SCALE == 2 {
            return ProjectConfigurationConst.SCREEN_WIDTH / 375 * float
        } else if ProjectConfigurationConst.SCREEN_SCALE == 3 {
            return ProjectConfigurationConst.SCREEN_WIDTH / 375 * float
        } else {
            return float
        }
    }
}
