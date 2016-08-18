//
//  ViewController.swift
//  ImDongHyeokDetail
//
//  Created by cscoi011 on 2016. 8. 11..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import UIKit

class PlanDetailViewController: UIViewController {

    @IBOutlet weak var planEndsLabel: UILabel!
    @IBOutlet weak var planEndmLabel: UILabel!
    @IBOutlet weak var planEndhLabel: UILabel!
    @IBOutlet weak var planStartsLabel: UILabel!
    @IBOutlet weak var planStartmLabel: UILabel!
    @IBOutlet weak var planAchieveLabel: UILabel!
    
    var currentPlan:Plan? = nil
    @IBOutlet weak var planNameLabel: UILabel!
    @IBOutlet weak var planStartLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let cleanPlan = currentPlan { // 옵셔널 바인딩
            planNameLabel.text=cleanPlan.name
            let startString = "\(cleanPlan.start.h) : \(cleanPlan.start.m) : \(cleanPlan.start.s)"
            //planAchieveLabel.text=String(cleanPlan.achieve)
            planStartLabel.text = startString
            let endString = "\(cleanPlan.end.h) : \(cleanPlan.end.m) : \(cleanPlan.end.s)"
            planEndhLabel.text = endString
            let achieveString = "\(cleanPlan.achieve) % Achieved"
            planAchieveLabel.text = achieveString
            
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

 