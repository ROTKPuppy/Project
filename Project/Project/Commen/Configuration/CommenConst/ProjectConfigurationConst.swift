//
//  ProjectConfigurationConst.swift
//  Project
//
//  Created by 郑键 on 17/6/5.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

//MARK: - Project公用

///项目默认图片资源文件文件夹
let RESOURCES_DEFAULT: String = "Default"

///项目图片资源存放bundle
let RESOURCES_BUNDLE_IMAGE: String = "Image.bundle"

///项目颜色资源存放bundle
let RESOURCES_BUNDLE_COLOR: String = "Color.bundle"

///项目文字资源存放bundle
let RESOURCES_BUNDLE_STRING: String = "String.bundle"

///项目网络请求超时时间
let SERVICE_TIMEOUT: CGFloat = 20.0

///项目用图片后缀普通
let IMAGE_SUFFIX_NOR: String = "_n"

///项目用图片后缀高亮
let IMAGE_SUFFIX_HIG: String = "_h"

///项目用图片后缀禁用
let IMAGE_SUFFIX_DIS: String = "_d"

//MARK: - 图片资源默认文件夹下子目录

///TabBar
let RESOURCES_DEFAULT_IMAGE_TABBAR: String = "TabBar"

//MARK: - 系统尺寸

///屏幕宽
let SCREEN_WIDTH: CGFloat = UIScreen.main.bounds.size.width

///屏幕高
let SCREEN_HEIGHT:CGFloat = UIScreen.main.bounds.size.height

///屏幕单点像素
let SCREEN_SCALE:CGFloat = UIScreen.main.scale

//MARK: - Debug

func dprint<T>(message: T, fileName: String = #file, methodName: String = #function, lineNumber: Int = #line) {
    #if DEBUG
        let logStr: String = (fileName as NSString).pathComponents.last!.replacingOccurrences(of: "swift", with: "")
        
        print("类: \(logStr) \n方法: \(methodName) \n行: [\(lineNumber)] \n内容: \(message)")
    #endif
}
