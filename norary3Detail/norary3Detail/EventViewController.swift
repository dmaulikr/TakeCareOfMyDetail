//
//  EventViewController.swift
//  norary3Detail
//
//  Created by cscoi027 on 2016. 8. 16..
//  Copyright © 2016년 Koreauniv. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {

    @IBOutlet weak var EventNameLable: UILabel!
    
    @IBOutlet weak var EventDetailLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.

    }
    

}
