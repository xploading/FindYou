//
//  GETools.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/23.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import UIKit

class GETool: NSObject {
//MARK: GE.🗣-----正则表达式判断-----!
    
    /** 验证手机号合法性*/
    static func isMobileNumber(mobile:String)->Bool
    {
        let regex = "^1[3578]\\d{9}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return  predicate.evaluate(with: mobile)
        
    }
    
    /** 验证email合法性*/
    static func isEmailAddress(email:String)->Bool
    {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{1,5}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: email)
    }
    /** 验证密码*/
    static func isPassword(_ pw:String)->Bool
    {
        let regex = "^[a-zA-Z0-9]{6,16}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: pw)
    }
    /** 验证码匹配*/
    static func isMobileCode(_ code:String)->Bool
    {
        let regex = "^[0-9]{4,6}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with:code)
    }
    
    /** 验证身份证号合法性*/
    static func isIdentityNumber(number:String)->Bool
    {
        let regex = "^\\d{14}[xX]|\\d{18}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: number)
    }
//MARK: GE.🗣-----用户登录状态,用户信息-----!
    /**登录状态判断*/
    static func isLogin()->Bool{
        let result = (GEBox.single().token != nil) ? true : false
        return result
    }
    /**本地保存用户信息*/
    static func zzSaveInfomation(){
        print("储存用户信息")
    }
    static func zzDeleteInfomation(){
        print("删除用户信息")
    }
//MARK: GE.🗣-----动画-----!
    static func Animat(_ type:GEAnimatType, _ block:((CAKeyframeAnimation)->Void)){
        let animation = CAKeyframeAnimation()
        switch type {
        case .scale:
            animation.keyPath = "transform.scale"
//            animation.values = [1.0,1.2,1.4,1.6,1.4,1.2,1.0]
            
            animation.duration = 0.5
        default:
            break
        }
        block(animation)
    }
//MARK: GE.🗣-----弹框-----!
    ///revoc为nil时不显示取消按钮,handle为nil时,alert只消失不执行任何操作
    static func zzShowAlertController(_ content:String,revoc:String?,_ handler:((UIAlertAction)->Void)?)->UIAlertController{
        let alert = UIAlertController(title: content, message: nil, preferredStyle: .alert)
        let executeAction = UIAlertAction(title: "确定", style: .default, handler: handler)
        if revoc != nil
        {
            let cancelAction = UIAlertAction(title: revoc, style: .cancel, handler: nil)
            alert.addAction(cancelAction)
        }
        alert.addAction(executeAction)
        return alert
    }
//MARK: GE.🗣-----反射机制-----!
    /** GE.🗣 获取class中的属性名*/
    static func checkPropertyList(_ ofCls:AnyClass)->Array<Any>{
        var outCount : UInt32 = 0
        var array = [String]()
        let propertys = class_copyPropertyList(ofCls, &outCount)
        for i in 0..<outCount{
            //获取对象中的属性
            let property  = propertys?[Int(i)]
            //获取属性名
            let name = property_getName(property)
            //转为String
            let propertyName = String.init(cString: name!)
            array.append(propertyName)
        }
        return array
    }
//MARK: GE.🗣-----时间戳转换-----!
    /**
     通过时间戳计算年月日
     */
    static func timeStampToString(timeStamp:String)->String {
        
        let string = NSString(string: timeStamp)
        
        let timeSta:TimeInterval = string.doubleValue
        let dfmatter = DateFormatter()
        dfmatter.dateFormat="yyyy年MM月dd日hh时mm分ss秒"
        let date = NSDate(timeIntervalSince1970: timeSta)
        return dfmatter.string(from: date as Date)
    }
    /**
     通过年月日计算时间戳
     */
    static func stringToTimeStamp(stringTime:String)->Int {
        let dfmatter = DateFormatter()
        dfmatter.dateFormat="yyyy年MM月dd日hh时mm分ss秒"
        let date = dfmatter.date(from: stringTime)
        let dateStamp:TimeInterval = date!.timeIntervalSince1970
        let dateSt:Int = Int(dateStamp)
        return dateSt
    }
    
    
    
    
    
}














