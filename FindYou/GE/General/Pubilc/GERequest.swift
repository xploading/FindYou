//
//  GERequest.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/23.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import UIKit
import AFNetworking


class GERequest: NSObject {
/**  GE.🗣 AF管理*/
    private static let manager = AFHTTPSessionManager(baseURL: URL(string: BaseURL))

    static func share()->AFHTTPSessionManager{
        
        let set = Set<String>(arrayLiteral: "text/html","text/plain","text/json","application/json", "text/javascript")
        manager.responseSerializer.acceptableContentTypes = set
        manager.requestSerializer.timeoutInterval = 30
        manager.requestSerializer.setValue(GEBox.single().token, forHTTPHeaderField: "X-Auth-Token")
        return manager
        
    }
    
    
    
    
/**  GE.🗣 POST请求*/

    static func POST(urlString:String,paraments:Any?,successBack:@escaping (_ json:Dictionary<String,Any>)->Void,failBack:@escaping (_ error:Any)->Void)
    {
        self.share().post(urlString, parameters: paraments, progress: nil, success: { (task, json) in
            if let dict = json as? Dictionary<String,Any>{
                successBack(dict)
            }else{
                print("json解析失败","请求接口:",urlString,"数据:",json as Any)
            }

        }) { (task, error) in
            GEHintView.showHint(msg: "网络请求失败,请稍后重试", end: nil)
            print("异常的请求接口:\t",manager.baseURL as Any,urlString)
            print("异常的请求参数:\t",paraments as Any)
            print("异常原因:\t",error)
            failBack(error)
        }
    }
    
/**  GE.🗣 GET请求*/
    static func GET(urlString:String,paraments:Any?,successBack:@escaping (_ json:Dictionary<String,Any>)->Void,failBack:@escaping (_ error:Any)->Void)
    {
        self.share().get(urlString, parameters: paraments, progress: nil, success: { (task, json) in
            if let dict = json as? Dictionary<String,Any>{
                successBack(dict)
            }else{
                print("json解析失败","请求接口:",urlString,"数据:",json as Any)
            }
            
        }) { (task, error) in
            GEHintView.showHint(msg: "网络请求失败,请稍后重试", end: nil)
            print("异常的请求接口:\t",manager.baseURL as Any,urlString)
            print("异常的请求参数:\t",paraments as Any)
            print("异常原因:\t",error)
            failBack(error)
        }
    }
    
    
    

}
