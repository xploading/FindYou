//
//  ExtensionUIView.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/23.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import Foundation
import UIKit

enum GEDirection {
    case Up
    case Down
    case Left
    case Right
}


extension UIView{
    var zz_W :CGFloat {
        get{
            return self.frame.width
        }
        set{
            self.frame.size.width = newValue
        }
    }
    var zz_H:CGFloat{
        get{
            return self.frame.height
        }
    }
    var zz_X:CGFloat{
        get{
            return self.frame.origin.x
        }
    }
    var zz_Y:CGFloat{
        get{
            return self.frame.origin.y
        }
    }
    var zz_minX:CGFloat{
        get{
            return self.frame.minX
        }
    }
    var zz_minY:CGFloat{
        get{
            return self.frame.minY
        }
    }
    var zz_MaxX:CGFloat{
        get{
            return self.frame.maxX
        }
    }
    var zz_MaxY:CGFloat{
        get{
            return self.frame.maxY
        }
    }
    
    

    
    
    
}






















