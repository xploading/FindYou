//
//  GEIndicateView.swift
//  ChinaJXLM
//
//  Created by QTJT on 2017/6/20.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import UIKit

class GEIndicateView: UIView {

    override func layoutSubviews() {
        self.additionalSetup()
    }
    
    func additionalSetup(){
        self.backgroundColor = UIColor.white
        self.superview?.backgroundColor = UIColor.gray
        self.layoutUI()
    }
    
    func layoutUI(){
        self.layer.mask = self.customeIndicate2(showView: self, point: CGPoint(x: 100, y: 0))
        
    }
    func customeIndicate(showView: UIView,point:CGPoint) -> CAShapeLayer {
        let w = showView.frame.width
        let h = showView.frame.height
//        let point = CGPoint(x: 50, y: 0)
        
        let space :CGFloat = 50
        let pStrat = CGPoint(x: 0, y: h)
        let p1 = CGPoint(x: 0, y: space)
        let p2 = CGPoint(x: point.x-10, y: space)
        let p3 = point
        let p4 = CGPoint(x: point.x+10, y: space)
        let p5 = CGPoint(x: w, y: 10)
        let pEnd = CGPoint(x: w, y: h)
        
        let path = UIBezierPath()
        path.move(to: pStrat)
        path.addLine(to: p1)
        path.addLine(to: p2)
        path.addLine(to: p3)
        path.addLine(to: p4)
        path.addLine(to: p5)
        path.addLine(to: pEnd)

        let layer = CAShapeLayer()
        layer.path = path.cgPath
        return layer
    }
    func customeIndicate2(showView: UIView,point:CGPoint) -> CAShapeLayer {
        let w = showView.frame.width
        let h = showView.frame.height

        let p1 = CGPoint(x: 0, y: h/3)
        let p2 = CGPoint(x: w*3/8, y: h/3)
        let p3 = CGPoint(x: w*4/8, y: 0)
        let p4 = CGPoint(x: w*5/8, y: h/3)
        let p5 = CGPoint(x: w, y: h/3)
        let p6 = CGPoint(x: w*6/8, y: h*2/3)
        let p7 = CGPoint(x: w*7/8, y: h)
        let p8 = CGPoint(x: w*4/8, y: h*2/3 + h/6)
        let p9 = CGPoint(x: w*1/8, y: h)
        let p10 = CGPoint(x: w*2/8, y:p6.y)
        
        
        let path = UIBezierPath()
        path.lineWidth = 10
        path.move(to: p1)
        path.addLine(to: p2)
        path.addLine(to: p3)
        path.addLine(to: p4)
        path.addLine(to: p5)
        path.addLine(to: p6)
        path.addLine(to: p7)
        path.addLine(to: p8)
        path.addLine(to: p9)
        path.addLine(to: p10)

        

        
        
        
        
        let layer = CAShapeLayer()
        layer.path = path.cgPath
        return layer

    }
    
    deinit {
        print("\(self.classForCoder):销毁")
    }
    

}
