//
//  ExtensionString.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/22.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import Foundation
import UIKit

///判断空的字符串,包含nil和无字符状态
func isNull(_ s:String?)->Bool{
    if s == nil{
        return true
    }
    if s!.isEmpty{
        return true
    }
    return false
    
}


//MARK:字符串处理
extension String{
        
    /**字符串MD5加密*/
//    func MD5(with:String)->String{
//        let input = (with as NSString).utf8String
//        let pointer = UnsafeMutablePointer<UInt8>.allocate(capacity: 16)
//        CC_MD5(input, (CC_LONG)(strlen(input)), pointer)
//        let str = NSMutableString()
//        for i in 0..<16{
//            str.appendFormat("%02x", pointer[i])
//        }
//        let backStr = str as String
//        return backStr
//    }
    
    /**修改字符串显示颜色,大小*/
    func customString(At:String...,color:UIColor?,font:UIFont?)->NSAttributedString{
        let mutStr = NSMutableAttributedString(string: self)
        for str in At{
            let range = (self as NSString).range(of: str)
            if let clr = color
            {
                mutStr.addAttribute(NSForegroundColorAttributeName, value: clr, range: range)
            }
            if let ft = font{
                mutStr.addAttributes([NSFontAttributeName:ft], range: range)
            }
        }
        return mutStr
    }

    
}




