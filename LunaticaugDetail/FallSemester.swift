//
//  FallSemester.swift
//  LunaticaugDetail
//
//  Created by 양문영 on 2016. 8. 11..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import Foundation


class FallClass {
    let classID:String
    let className:String
    var classroom:String="미정"
    let classpoint:Int
    var timesection:Array<String>? = nil
    let professor:String
    let classType:Majortype
    
    enum Majortype {
        case Essential
        case NotEssential
        
        var essentialornot:String{
            get {
                let essentialtype:String
                    switch self{
                    case.Essential:essentialtype = "전공필수"
                    case.NotEssential:essentialtype = "전공선택"
                    }
                return essentialtype
                }
            }
    }
    
    init (classID:String, className:String, classpoint:Int, professor:String, classType:Majortype){
        self.classID = classID
        self.className = className
        self.classpoint = classpoint
        self.professor = professor
        self.timesection = nil
        self.classType = classType
    }
}



