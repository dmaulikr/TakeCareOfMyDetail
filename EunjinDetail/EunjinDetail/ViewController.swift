//
//  ViewController.swift
//  EunjinDetail
//
//  Created by eunjin Jo on 2016. 8. 11..
//  Copyright © 2016년 eunjin. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController {

    @IBOutlet weak var PlayerNameLabel: UILabel!
    @IBOutlet weak var PlayerDetailLabel: UILabel!

    var currentFruit:Fruit? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        PlayerNameLabel.text = currentFruit?.name
        
        var fruitDetails:String = ""
        
        if let currentColor = (currentFruit?.color) {
            fruitDetails += "색깔은 \(currentColor)이구요.\n"
        }
        
        if let currentCountry = (currentFruit?.country) {
            fruitDetails += "원산지는 \(currentCountry)이구요.\n"
        }
        

        if let currentSeason = (currentFruit?.season) {
            fruitDetails += "제철은 \(currentSeason)입니다."
        }
        
        PlayerDetailLabel.text = fruitDetails
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

