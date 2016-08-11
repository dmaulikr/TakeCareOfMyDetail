//
//  SeoulTrip.swift
//  AhsibDetail
//
//  Created by STEP on 2016. 8. 11..
//  Copyright © 2016년 STEP. All rights reserved.
//

import Foundation

class SeoulTrip{
    var name:String
    var info:String
    var subway:Int
    
    init(){
        self.name = ""
        self.info = ""
        self.subway = 0
        
    }
    
    convenience init(name:String){
        self.init()
        self.name = name
    }
}

// 만드는 페이지에 이미지도 있으면 좋을꺼같아요. 혹시 시간남으시면 넣는것도 좋을것 같아요!
