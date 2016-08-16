//
//  ViewController.swift
//  CelineleeDetail
//
//  Created by cscoi016 on 2016. 8. 11..
//  Copyright © 2016년 ryung. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController {
    
    
    
    @IBOutlet weak var CarNameLabel: UILabel!
    @IBOutlet weak var CarCostLabel: UILabel!
    
    var currentCar: Car? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let theCar = currentCar {
            CarNameLabel.text = theCar.model
            CarCostLabel.text = String(theCar.cost)
        }
        
        
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

