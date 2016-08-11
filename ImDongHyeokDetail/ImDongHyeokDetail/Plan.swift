//
//  Plan.swift
//  ImDongHyeokDetail
//
//  Created by cscoi011 on 2016. 8. 11..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import Foundation

typealias Time = (h:Int, m:Int, s:Int)
class Plan {
    var name:String
    var achieve:Int
    var start:Time
    var end:Time
    
    
    init(){
        self.name = ""
        self.achieve = 0
        self.start = (0,0,0)
        self.end = (0,0,0)
    }
    
    convenience init(name:String) {
        self.init()
        self.name = name
    }
}

