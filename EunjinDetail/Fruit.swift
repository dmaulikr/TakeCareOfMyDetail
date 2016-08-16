//
//  Fruit.swift
//  EunjinDetail
//
//  Created by eunjin Jo on 2016. 8. 11..
//  Copyright © 2016년 eunjin. All rights reserved.
//

import Foundation

class Fruit{
    var name:String
    var price:Int
    var color:String
    var country:String
    var season:String
    
    init(name:String,price:Int,color:String,country:String,season:String){
        self.name = name
        self.price = price
        self.color = color
        self.country = country
        self.season = season
    }
}