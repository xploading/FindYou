//
//  HomeVC.swift
//  FindYou
//
//  Created by QTJT on 2017/9/15.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import UIKit
import MBProgressHUD
import WebKit


class HomeVC: GEViewController,UIWebViewDelegate {

    let wView = WKWebView()
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        wView.frame = CGRect(x: 0, y: 0, width: 414, height: 736)
        let request = URLRequest(url: URL.init(string: "https://www.baidu.com")!)
        wView.load(request)
//        wView.loadRequest(request)
        
        

    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        let v = TestVC()
        v.webView = self.wView
        self.navigationController?.pushViewController(v, animated: true)
    }
    


}
