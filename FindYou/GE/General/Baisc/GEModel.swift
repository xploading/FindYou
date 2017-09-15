//
//  GEModel.swift
//  ZZSickStatistics
//
//  Created by QTJT on 2017/6/14.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import UIKit

class GEModel: NSObject {
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        print("\(self.classForCoder)未定义的Key>>piupiupiu:",key)
    }
    
}
