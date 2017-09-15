//
//  GEKeyframeAnimat.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/24.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import UIKit

enum GEAnimatType {
    case rotation           //围绕z轴
    case scale              //所有方向缩放
    case translation        //移动到的点
    case backgroundColor    //背景颜色颜色[[UIColor redColor] CGColor]
    case cornerRadius       //圆角
    case bounds             //大小 参数:CGRect
    case contents           //内容 参数:CGImage
}



class GEKeyframeAnimat: NSObject {
    
    func createAnimation(type:GEAnimatType){
        let animat = CAKeyframeAnimation()
        
        
        
        switch  type{
        case GEAnimatType.rotation:
            animat.keyPath = "transform.rotation"
            animat.values = [Double.pi/1,Double.pi/2,Double.pi/3,Double.pi/4,Double.pi/5,Double.pi/6]
            
        default:
            break
        }
    }
    
}




























