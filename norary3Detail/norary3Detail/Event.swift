//
//  Event.swift
//  norary3Detail
//
//  Created by cscoi027 on 2016. 8. 11..
//  Copyright © 2016년 Koreauniv. All rights reserved.
//

import Foundation

class Event {
    var name:String
    var start:Time
    var end:Time
    var memo:String
    
    typealias Time = (y:Int, m:Int, d:Int, hh:Int, mm: Int)
    
    init(){
        self.name = "제목 없는 일정"
        self.start = (2016,08,11,14,00)
        self.end = (self.start.y, self.start.m, self.start.d, self.start.hh+1, self.start.mm)
        self.memo = "test"
    }
    
    init (name:String) {
        self.name = name
        self.start = (2016,08,11,14,00)
        self.end = (self.start.y, self.start.m, self.start.d, self.start.hh+1, self.start.mm)
        self.memo = "text"
    }
    
    init(name:String, start:Time) {
        self.name = name
        self.start = start
        self.end = (self.start.y, self.start.m, self.start.d, self.start.hh+1, self.start.mm)
        self.memo = "text"
    }
    
    init(name:String, start:Time, end:Time) {
        self.name = name
        self.start = start
        self.end = end
        self.memo = "text"
    }
    
    
}
