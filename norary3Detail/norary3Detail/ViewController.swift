//
//  ViewController.swift
//  norary3Detail
//
//  Created by cscoi027 on 2016. 8. 11..
//  Copyright © 2016년 Koreauniv. All rights reserved.
//

import UIKit

class EventDetailViewController:UIViewController{
    
    @IBOutlet weak var eventName: UILabel!
    
    @IBOutlet weak var eventDetail: UILabel!
    
    
    var currentEvent:Event? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        eventName.text = currentEvent?.name
        eventDetail.text = currentEvent?.memo
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

