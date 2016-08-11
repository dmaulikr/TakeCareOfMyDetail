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
    var memo:String
    
    typealias Time = (y:Int, m:Int, d:Int, hh:Int, mm: Int)
    
    init (name:String) {
        self.name = name
        self.start = (2016,08,11,14,00)
        self.memo = "text"
    }
    
    init(name:String, start:Time) {
        self.name = name
        self.start = start
        self.memo = "text"
    }
    
    init(){
        self.name = "제목 없는 일정"
        self.start = (2016,08,11,14,00)
        self.memo = "test"
    }
}
