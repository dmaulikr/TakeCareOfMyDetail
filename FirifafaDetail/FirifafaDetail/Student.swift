//
//  Student.swift
//  FirifafaDetail
//
//  Created by cscoi018 on 2016. 8. 11..
//  Copyright © 2016년 JJLee. All rights reserved.
//

import Foundation

class Student {
    var profileImage:UIImage //프로필 이미지
    var name:String //학생이름
    var major:String //전공
    var admissionYear:Int //입학년도 (YYYY)
    var grade:Int //학년 (1~4)
    var scores:[Double] //지금까지의 학점 배열
    var average:Double //평균학점
    
    
    init() {
        self.profileImage = nil
        self.name = ""
        self.major = ""
        self.admissionYear = 2016
        self.grade = 0
        self.scores = []
        self.average = 0.0
        
        
    }
    
    convenience init(name:String) {
        self.init()
        self.name = name
        
    }
    
    
}