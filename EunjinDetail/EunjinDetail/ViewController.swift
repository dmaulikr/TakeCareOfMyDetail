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
        let fruitDetails:String = "색깔은 \(currentFruit!.color) 이구요.\n원산지는 \(currentFruit!.country)네요.\n제철은 \(currentFruit!.season)입니다."
        PlayerDetailLabel.text = fruitDetails
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

