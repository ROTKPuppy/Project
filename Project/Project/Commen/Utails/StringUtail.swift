//
//  StringUtail.swift
//  Project
//
//  Created by 郑键 on 17/6/5.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

struct StringUtail {
    
    ///处理文字国际化方法
    static func String(_ stringKey: String) -> String {
        return NSLocalizedString(stringKey, comment: "")
    }
}
