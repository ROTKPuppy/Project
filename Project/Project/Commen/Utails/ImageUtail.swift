//
//  ImageUtail.swift
//  Project
//
//  Created by 郑键 on 17/6/5.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

struct ImageUtail {
    
    ///加载Bundle图片
    static func BundleImage(_ imageFilePath: String, imageNamed: String) -> UIImage {
        
        if let imagePathString = Bundle.main.resourcePath?.appending("/" + ProjectConfigurationConst.RESOURCES_BUNDLE_IMAGE + "/" + ProjectConfigurationConst.RESOURCES_DEFAULT + "/" + imageFilePath + "/" + imageNamed) {
            return UIImage(named: imagePathString)!
        }
        
        return UIImage()
    }
    
    ///加载Bundle图片数组不含禁用状态图片
    ///下标0为nor图片
    ///下标1为hig图片
    static func BundleImagesArray(_ imageFilePath: String, imageNamed: String) -> Array<UIImage> {
        
        if let imagePathString = Bundle.main.resourcePath?.appending("/" + ProjectConfigurationConst.RESOURCES_BUNDLE_IMAGE + "/" + ProjectConfigurationConst.RESOURCES_DEFAULT + "/" + imageFilePath) {
            
            var norImage = UIImage(named: imagePathString.appending("/" + imageNamed + ProjectConfigurationConst.IMAGE_SUFFIX_NOR))!
            var higImage = UIImage(named: imagePathString.appending("/" + imageNamed + ProjectConfigurationConst.IMAGE_SUFFIX_HIG))!
            
            norImage = norImage.withRenderingMode(.alwaysOriginal)
            higImage = higImage.withRenderingMode(.alwaysOriginal)
            
            return [norImage,
                    higImage]
        }
        
        let imagesArray = [UIImage()]
        return imagesArray
    }
    
    ///加载Bundle图片数组含禁用状态图片
    ///下标0为nor图片
    ///下标1为dis图片
    ///下标2为hig图片
    static func BundleImagesArrayDis(_ imageFilePath: String, imageNamed: String) -> Array<UIImage> {
        
        if let imagePathString = Bundle.main.resourcePath?.appending("/" + ProjectConfigurationConst.RESOURCES_BUNDLE_IMAGE +  "/" + ProjectConfigurationConst.RESOURCES_DEFAULT + "/" + imageFilePath) {
            
            var norImage = UIImage(named: imagePathString.appending("/" + imageNamed + ProjectConfigurationConst.IMAGE_SUFFIX_NOR))!
            var disImage = UIImage(named: imagePathString.appending("/" + imageNamed + ProjectConfigurationConst.IMAGE_SUFFIX_DIS))!
            var higImage = UIImage(named: imagePathString.appending("/" + imageNamed + ProjectConfigurationConst.IMAGE_SUFFIX_HIG))!
            
            norImage = norImage.withRenderingMode(.alwaysOriginal)
            higImage = higImage.withRenderingMode(.alwaysOriginal)
            disImage = disImage.withRenderingMode(.alwaysOriginal)
            
            return [norImage,
                    disImage,
                    higImage]
        }
        
        let imagesArray = [UIImage()]
        return imagesArray
    }
    
    
}
