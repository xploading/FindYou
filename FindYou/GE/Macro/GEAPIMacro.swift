//
//  GEAPIConst.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/24.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import RxDataSources


let bag = DisposeBag()
/*! 接口API文档*/

let BaseURL             = "http://www.chinajxlm.com:8800/api/v1/"

//注册
let JXLM_register       = "register"
/*phone,password,phonecode*/
//登录
let JXLM_Login          = "login"
//用户信息
let JXLM_userInfos      = "user"
//短信验证码
let JXLM_mobileCode     = "register/sendsms"

//MARK: GE.🗣-----首页-----!
let JXLM_index          = "index"


//MARK: GE.🗣-----课程-----!
let JXLM_allCategory    = "category"        //获取全部分类
let JXLM_course         = "course"          //获取课程信息:id






















