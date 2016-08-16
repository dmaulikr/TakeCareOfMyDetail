//
//  Car.swift
//  CelineleeDetail
//
//  Created by cscoi016 on 2016. 8. 11..
//  Copyright © 2016년 ryung. All rights reserved.
//

import Foundation



class Car {
    let model:String
    let brand:String
    let country:String
    var cost:Double
    
    init(model:String, brand:String, country:String){
        self.model = model
        self.brand = brand
        self.country = country
        self.cost = 0.0
        
    }
}