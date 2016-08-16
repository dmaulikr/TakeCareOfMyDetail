//
//  Player.swift
//  seunghkongDetail
//
//  Created by Seung Hyun Kong on 8/11/16.
//  Copyright © 2016 Seung Hyun Kong. All rights reserved.
//

import Foundation

class Player {
    let name:String
    var position:Int
    var average:Double
    var description:String
    
    init(name:String) {
        self.name = name
        self.position = 0
        self.average = 0.0
        self.description = ""
    }
}