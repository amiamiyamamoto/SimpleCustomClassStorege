//
//  MyData.swift
//  SimpleCustomClassStorege
//
//  Created by s247 on 2017/11/08.
//  Copyright © 2017年 ami. All rights reserved.
//

import Foundation


class MyDate: NSObject, NSCoding {
    var valuesString:String?
    
    //
    override init() {
    }
    
    required init?(coder aDecoder: NSCoder) {
        valuesString = aDecoder.decodeObject(forKey: "valuesString") as? String
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(valuesString, forKey:"valuesString")
    }
}

