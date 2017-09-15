//
//  GlobalConst.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/22.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import Foundation
import UIKit



let GWidth      = UIScreen.main.bounds.width     //屏宽
let GHeight     = UIScreen.main.bounds.height    //屏高
let GVersion    = UIDevice.current.systemVersion //系统版本

let ss_defaultGreen = "55D1C1"
let ss_lineGray = "EAEBEB"





//图片闭包
var GImageBlock : ((UIImage)->Void) = { image in
    print("GImageBlock执行错误,未找到可执行的block方法")
}
//model闭包
var GModelBlock : ((GEModel)->Void) = { model in
    print("GModelBlock执行错误,未找到可执行的block方法")
}




/**适应屏幕宽度*/
func zzFit(w:CGFloat)->CGFloat
{
    return w*GWidth/414
}
/**适应屏幕高度*/
func zzFit(h:CGFloat)->CGFloat
{
    return h*GHeight/736
}
///获取文件路径
func zzPath(_ forName:String?,of Type:String?)->String?{
    return Bundle.main.path(forResource: forName, ofType: Type)
}

///字体大小
func zzFont(_ size:CGFloat)->UIFont{
    return UIFont.systemFont(ofSize: size)
}



