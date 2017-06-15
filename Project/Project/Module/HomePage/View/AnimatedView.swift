//
//  AnimatedView.swift
//  Project
//
//  Created by 郑键 on 2017/6/7.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

class AnimatedView: BaseView, CAAnimationDelegate {
    
    var gradientLayer: CALayer?
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        setupAnimation()
        
        perform(#selector(changeLayerWidth), afterDelay: 1)
        perform(#selector(drawLinePath), afterDelay: 2.5)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupAnimation() -> () {
        
        // 动画
//        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
//        rotateAnimation.fromValue = 0
//        rotateAnimation.toValue =  Double.pi * 2
//        rotateAnimation.duration  = 15;
//        rotateAnimation.autoreverses = false;
//        rotateAnimation.fillMode = kCAFillModeForwards;
//        rotateAnimation.repeatCount = MAXFLOAT
        
        //生成渐变色
        let gradientLayer = CALayer()
        gradientLayer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.gradientLayer = gradientLayer
        
        //左侧渐变色
        let leftLayer = CAGradientLayer()
        leftLayer.frame = self.bounds
        leftLayer.locations = [0.3, 0.9, 1];
        leftLayer.colors = [UIColor.yellow.cgColor, UIColor.red.cgColor];
        gradientLayer.addSublayer(leftLayer)
        
        let dotLayer = CAShapeLayer()
        dotLayer.frame = self.bounds
        dotLayer.fillColor = UIColor.clear.cgColor
        dotLayer.strokeColor = UIColor.white.cgColor
        dotLayer.opacity = 1
        dotLayer.lineCap = kCALineCapRound
        dotLayer.lineWidth = 1
        let path = UIBezierPath(arcCenter: self.center,
                                radius: self.width * 0.5 - 5,
                                startAngle: 0,
                                endAngle: CGFloat(Double.pi * 2),
                                clockwise: true)
        dotLayer.path = path.cgPath
        dotLayer.lineDashPattern = [0.5,4]
        
        gradientLayer.mask = dotLayer
        layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        layer.addSublayer(gradientLayer)
        //layer.add(rotateAnimation, forKey: "rotateAnimation")
    }
    
    func changeLayerWidth() -> () {
        
        let storkAnimation = CABasicAnimation(keyPath: "strokeEnd")
        storkAnimation.duration = 8
        storkAnimation.fromValue = 0
        storkAnimation.toValue = 1
        storkAnimation.repeatCount = HUGE
        
        let dotLineLayer = CAShapeLayer()
        dotLineLayer.frame = self.bounds
        dotLineLayer.fillColor = UIColor.white.cgColor
        dotLineLayer.strokeColor = UIColor.red.cgColor
        dotLineLayer.opacity = 1
        dotLineLayer.lineCap = kCALineCapRound
        dotLineLayer.lineWidth = 1
        let path = UIBezierPath(arcCenter: self.center,
                                radius: self.width * 0.5 - 5,
                                startAngle: 0,
                                endAngle: CGFloat(Double.pi * 2),
                                clockwise: true)
        dotLineLayer.path = path.cgPath
        dotLineLayer.lineDashPattern = [2,4]
        dotLineLayer.add(storkAnimation, forKey: "storkAnimation")
        dotLineLayer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        layer.addSublayer(dotLineLayer)
    }
    
    func drawLinePath() -> () {
        
        let storkAnimation = CABasicAnimation(keyPath: "strokeEnd")
        storkAnimation.duration = 6.5
        storkAnimation.fromValue = 0
        storkAnimation.toValue = 1
        storkAnimation.repeatCount = HUGE
        
        let lineLayer = CAShapeLayer()
        lineLayer.frame = self.bounds
        lineLayer.fillColor = UIColor.white.cgColor
        lineLayer.strokeColor = UIColor.red.cgColor
        lineLayer.opacity = 1
        lineLayer.lineCap = kCALineCapRound
        lineLayer.lineWidth = 1
        let path = UIBezierPath(arcCenter: self.center,
                                radius: self.width * 0.5 - 5,
                                startAngle: 0,
                                endAngle: CGFloat(Double.pi * 2),
                                clockwise: true)
        lineLayer.path = path.cgPath
        lineLayer.add(storkAnimation, forKey: "storkAnimation")
        lineLayer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        layer.addSublayer(lineLayer)
    }
}

