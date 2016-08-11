//
//  EPLTeam.swift
//  Sykim94Detail
//
//  Created by cscoi028 on 2016. 8. 11..
//  Copyright © 2016년 KimSeongYup. All rights reserved.
//

import Foundation

class EPLTeam {
    let name:String
    var point:Int
    var win:Int
    var draw:Int
    var lose:Int
    
    init(name:String, point:Int, win:Int, draw:Int, lose:Int) {
        self.name = name
        self.point = point
        self.win = win
        self.draw = draw
        self.lose = lose
    }
}