//
//  ViewController.swift
//  ImDongHyeokDetail
//
//  Created by cscoi011 on 2016. 8. 11..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import UIKit

class PlanDetailViewController: UIViewController {

    @IBOutlet weak var planAchieveLabel: UILabel!
    
    var currentPlan:Plan? = nil
    @IBOutlet weak var planNameLabel: UILabel!
    @IBOutlet weak var planEndLabel: UILabel!
    @IBOutlet weak var planStartLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let cleanPlan = currentPlan {
            planNameLabel.text=cleanPlan.name
            planAchieveLabel.text=String(cleanPlan.achieve)
            planStartLabel.text = String(cleanPlan.start.h)
            //planEndLabel.text=Time(currentPlan?.end)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

 