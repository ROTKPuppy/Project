//
//  ProjectConfigurationConst.swift
//  Project
//
//  Created by 郑键 on 17/6/5.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

struct ProjectConfigurationConst {
    
    ///项目默认图片资源文件文件夹
    static let RESOURCES_DEFAULT: String = "Default"
    
    ///项目图片资源存放bundle
    static let RESOURCES_BUNDLE_IMAGE: String = "Image.bundle"
    
    ///项目颜色资源存放bundle
    static let RESOURCES_BUNDLE_COLOR: String = "Color.bundle"
    
    ///项目文字资源存放bundle
    static let RESOURCES_BUNDLE_STRING: String = "String.bundle"
    
    ///项目网络请求超时时间
    static let SERVICE_TIMEOUT: CGFloat = 20.0
    
    ///项目用图片后缀普通
    static let IMAGE_SUFFIX_NOR: String = "_n"
    
    ///项目用图片后缀高亮
    static let IMAGE_SUFFIX_HIG: String = "_h"
    
    ///项目用图片后缀禁用
    static let IMAGE_SUFFIX_DIS: String = "_d"
}

///图片资源默认文件夹下子目录
extension ProjectConfigurationConst {
    
    ///TabBar
    static let RESOURCES_DEFAULT_IMAGE_TABBAR: String = "TabBar"
}
