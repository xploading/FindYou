//
//  TestVC.swift
//  FindYou
//
//  Created by QTJT on 2017/9/15.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import UIKit
import WebKit
class TestVC: GEViewController {

    var webView:WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
            self.view.addSubview(webView!)

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
