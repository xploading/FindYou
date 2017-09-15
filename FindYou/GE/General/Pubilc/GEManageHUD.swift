//
//  GEManageHUD.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/24.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import UIKit
import MBProgressHUD


class GEManageHUD: NSObject {
    
//    private static let HUD = MBProgressHUD()
    private static let HUD = MBProgressHUD()

    private override init() {
    }
    static func share()->MBProgressHUD{
        HUD.frame = CGRect(x: 0, y: 64, width: GWidth, height: GHeight-64-44)
        let imageView = UIImageView(frame: CGRect.init(x: 0, y: 0, width: 414, height: 400))
        imageView.image = UIImage(named: "sparkle")
        HUD.customView = imageView
        return HUD
        
    }
    
    private static func customHUD(){
    }
    
    
    
    
//开始加载指示器
    static func zzStartLoading(){
        let window = UIApplication.shared.keyWindow
        window?.addSubview(self.share())
        self.share().show(animated: true)
        
    }
//停止加载指示器
    static func zzStopLoading(){
        self.share().hide(animated: true)
    }
    
    

}
