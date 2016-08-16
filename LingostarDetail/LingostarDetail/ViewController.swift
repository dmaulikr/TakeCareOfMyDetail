//
//  ViewController.swift
//  LingostarDetail
//
//  Created by Lingostar on 2016. 8. 11..
//  Copyright © 2016년 CodersHigh. All rights reserved.
//

import UIKit

class HitterDetailViewController: UIViewController {

    @IBOutlet weak var hitterNameLabel: UILabel!
    
    @IBOutlet weak var hitterAverageLabel: UILabel!
    
    var currentHitter:Hitter? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        hitterNameLabel.text = currentHitter?.name
        hitterAverageLabel.text = String(currentHitter?.average)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

