//
//  GEHintView.swift
//  SSJXLM
//
//  Created by QTJT on 2017/7/17.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import UIKit
/**  GE.🗣 自动消失的提示信息*/



class GEHintView: GEView {
    var info : String?
    
    private static var label : UILabel?

    private static let v = GEHintView()
    static func single()->GEHintView{
        label?.removeFromSuperview()
        v.alpha = 0.8
        v.frame = CGRect(x: 0, y: 0, width: 100, height: 80)
        label = UILabel(frame: CGRect.init(x: 0, y: 0, width: 80, height: 80))
        label?.center = CGPoint(x: v.zz_W/2, y: v.zz_H/2)
        v.center = CGPoint(x: GWidth/2, y: GHeight/2)
        v.backgroundColor = UIColor.colorWith(Hex: "20243D")
        v.layer.cornerRadius = 5
        label?.text = v.info
        label?.textAlignment = .center
        label?.textColor = UIColor.white
        label?.font = UIFont.systemFont(ofSize: 14)
        label?.numberOfLines = 3
        v.addSubview(label!)
        return v
    }
    private override init(frame: CGRect) {
        super.init(frame: frame)
    }

    
    
    static func showHint(msg:String,end:(()->Void)?){
        self.v.info = msg
        let w = UIApplication.shared.keyWindow
        w?.addSubview(self.single())
        let time : TimeInterval = 1.5
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+time) {
            UIView.animate(withDuration: 0.2, animations: {
                v.alpha = 0
            }) { (bool) in
                v.removeFromSuperview()
                end?()
            }

        }
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
