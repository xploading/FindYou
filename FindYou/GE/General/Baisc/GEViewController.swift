//
//  GEViewController.swift
//  ZZSickStatistics
//
//  Created by QTJT on 2017/6/14.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import UIKit

class GEViewController: UIViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.RxBinding()
    }
    
    func RxBinding(){
        
    }
/**  GE.🗣 提示框*/
    func showAlertControll(message:String,showCancel:Bool,handler:((UIAlertAction)->Void)?){
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let defalut = UIAlertAction(title: "确定", style: .default, handler: handler)
        let cancel = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        alert.addAction(defalut)
        if showCancel{
            alert.addAction(cancel)
        }
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    

    deinit {
        print("piupiu👉·····\(self.classForCoder)💥💥Boom💥💥")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
