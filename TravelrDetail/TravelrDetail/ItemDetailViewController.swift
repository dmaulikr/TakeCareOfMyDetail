//
//  ItemDetailViewController.swift
//  TravelrDetail
//
//  Created by 이우재 on 2016. 8. 16..
//  Copyright © 2016년 LEE. All rights reserved.
//

import UIKit

class ItemDetailViewController: UIViewController {

        
    @IBOutlet weak var category: UILabel!
    
    @IBOutlet weak var numOfPerson: UILabel!
    
    var currentItem:Item?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        category.text = currentItem!.category
        numOfPerson.text = String(currentItem!.numberOfPerson)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
