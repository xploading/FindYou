//
//  GEBox.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/23.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import UIKit
/**单例用户储存盒子*/
final class GEBox: NSObject {
    //储存用户信息
    var User : GEUserModel?
    var token : String?
    var expire : String?   //token有效期
    var user_id : String?  //用户id
    
    
    private static let box = GEBox()
    static func single()->GEBox{
        return box
    }
    private override init() {
    }
    static func isLogin()->Bool{
        return UserDefaults.standard.bool(forKey: "isLogin") 
    }
    static func logOut(){
        UserDefaults.standard.set(false, forKey: "isLogin")
        box.token = nil
        box.User = nil
        box.user_id = nil
        box.expire = nil
    }
}
