//
//  GECommonView.swift
//  ChinaJXLM
//
//  Created by QTJT on 2017/6/20.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import UIKit

class GECommonView: UIView {
    var nibName = "myTest"
    
    init(_ nibName:String,frame:CGRect) {
        self.nibName = nibName
        super.init(frame: frame)
        

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

    override func layoutSubviews() {
        
    }

}
