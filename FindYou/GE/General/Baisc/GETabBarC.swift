//
//  GETabBarC.swift
//  AiBook
//
//  Created by QTJT on 2017/9/6.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import UIKit

class GETabBarC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.additionalSetup()
    }
    func additionalSetup(){
        let itemNames = ["1","2","3","4"]
        let defaultImgs = ["1","2","3","4"]
        let selectImgs = ["1","2","3","4"]
        let vcNames = ["HomeVC","SecondVC","ThirdVC","MineVC"]
        var NVCS = [UIViewController]()
        for i in 0..<vcNames.count{
            let projectName = "FindYou."
            let className = projectName + vcNames[i]
            let classType = NSClassFromString(className) as! UIViewController.Type
            let nvc = UINavigationController(rootViewController: classType.init())
            NVCS.append(nvc)
            let defaultImage = UIImage(named: defaultImgs[i])?.withRenderingMode(.alwaysOriginal)
            let selectImage = UIImage(named: selectImgs[i])?.withRenderingMode(.alwaysOriginal)
            let item = UITabBarItem(title: itemNames[i], image: defaultImage, selectedImage: selectImage)
            nvc.tabBarItem = item
        }
        self.viewControllers = NVCS
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
