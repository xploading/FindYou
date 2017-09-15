//
//  ExtensionTableView.swift
//  GERabbit
//
//  Created by QTJT on 2017/6/8.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import UIKit

extension UITableView{
    func registerNib(_ name:String,identifier:String,bundle:Bundle?){
        let nib = UINib(nibName: name, bundle: bundle)
        self.register(nib, forCellReuseIdentifier: identifier)
    }
}
