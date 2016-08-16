//
//  Brewery.swift
//  JeronimoxcxDetail
//
//  Created by cscoi017 on 2016. 8. 11..
//  Copyright © 2016년 Sun. All rights reserved.
//

import Foundation

class Brewery{
    let name:String
    var location:(Double,Double)
    var ratings:Double
    var visited:Int

    init(name:String){
        self.name = name
        self.location = (0.0,0.0)
        self.ratings = 0.0
        self.visited = 0
    }
}
