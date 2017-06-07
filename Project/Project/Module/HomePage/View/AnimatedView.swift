//
//  AnimatedView.swift
//  Project
//
//  Created by 郑键 on 2017/6/7.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit

class AnimatedView: BaseView, CAAnimationDelegate {
    
    var animationFlag = 0
    
    convenience init() {
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        perform(#selector(AnimatedView.drawDottedCycle), afterDelay: 2)
        perform(#selector(AnimatedView.drawLineCycle), afterDelay: 2.5)
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        drawRoundCycle()
    }
    
    func drawLineAnimation(layer: CALayer) -> () {
        let bas = CABasicAnimation(keyPath: "strokeEnd")
        bas.duration = 1
        bas.delegate = self
        bas.fromValue = 0
        bas.toValue = 1
        layer.add(bas, forKey: "key")
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        
        if animationFlag == 1 {
            
            for subLayer in layer.sublayers! {
                if subLayer.name == "dottedCycle"
                || subLayer.name == "lineCycle"{
                    subLayer.removeFromSuperlayer()
                }
            }
            
            perform(#selector(AnimatedView.drawDottedCycle), afterDelay: 2)
            perform(#selector(AnimatedView.drawLineCycle), afterDelay: 2.5)
            
            animationFlag = 0
        }else{
            animationFlag += 1
        }
    }
}

///画点圆圈
extension AnimatedView {

    func drawRoundCycle() -> () {
    
        UIView .animate(withDuration: 1) { 
            let roundCycleBorder                = CAShapeLayer()
            roundCycleBorder.fillColor          = ColorUtail.utail.color0.cgColor
            roundCycleBorder.strokeColor        = ColorUtail.utail.color2.cgColor
            let cycleBorderPath                 = UIBezierPath(roundedRect: self.bounds, cornerRadius: 50)
            roundCycleBorder.path               = cycleBorderPath.cgPath
            roundCycleBorder.frame              = self.bounds
            roundCycleBorder.lineWidth          = 1
            roundCycleBorder.lineCap            = kCALineCapRound
            roundCycleBorder.lineDashPattern    = [0.5, 10]
            roundCycleBorder.name               = "roundCycle"
            self.layer.addSublayer(roundCycleBorder)
        }
    }
}

///画虚线框
extension AnimatedView {
    
    func drawDottedCycle() -> () {
        let roundCycleBorder                = CAShapeLayer()
        roundCycleBorder.fillColor          = ColorUtail.utail.color0.cgColor
        roundCycleBorder.strokeColor        = ColorUtail.utail.color2.cgColor
        let cycleBorderPath                 = UIBezierPath(roundedRect: self.bounds, cornerRadius: 50)
        roundCycleBorder.path               = cycleBorderPath.cgPath
        roundCycleBorder.frame              = self.bounds
        roundCycleBorder.lineWidth          = 1
        roundCycleBorder.lineCap            = "round"
        roundCycleBorder.lineDashPattern    = [10, 5]
        roundCycleBorder.lineDashPhase      = 1.0
        roundCycleBorder.name               = "dottedCycle"
        layer.addSublayer(roundCycleBorder)
        
        self.drawLineAnimation(layer: roundCycleBorder)
    }
}

///画实线框
extension AnimatedView {
    
    func drawLineCycle() -> () {
        
        let roundCycleBorder                = CAShapeLayer()
        roundCycleBorder.fillColor          = ColorUtail.utail.color0.cgColor
        roundCycleBorder.strokeColor        = ColorUtail.utail.color2.cgColor
        let cycleBorderPath                 = UIBezierPath(roundedRect: self.bounds, cornerRadius: 50)
        roundCycleBorder.path               = cycleBorderPath.cgPath
        roundCycleBorder.frame              = self.bounds
        roundCycleBorder.lineWidth          = 1
        roundCycleBorder.name               = "lineCycle"
        layer.addSublayer(roundCycleBorder)
        
        self.drawLineAnimation(layer: roundCycleBorder)
    }
}

