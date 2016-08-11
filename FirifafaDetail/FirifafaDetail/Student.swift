//
//  Student.swift
//  FirifafaDetail
//
//  Created by cscoi018 on 2016. 8. 11..
//  Copyright © 2016년 JJLee. All rights reserved.
//

import Foundation

class Student {
    var name:String
    var major:String
    var grade:Int
    var score:Double
    
    init() {
        self.name = ""
        self.major = ""
        self.grade = 0
        self.score = 0.0
        
    }
    
    convenience init(name:String) {
        self.init()
        self.name = name
        
    }
    
    
}