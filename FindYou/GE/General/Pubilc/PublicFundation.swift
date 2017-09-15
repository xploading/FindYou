//
//  PublicFundation.swift
//  GERabbit
//
//  Created by QTJT on 2017/6/8.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import Foundation



public func scopedExample(exampleDescription: String, _ action: () -> Void) {
    print("\n--- \(exampleDescription) ---\n")
    action()
}
public enum error: Error {
    case Example(String)
}




