//
//  AdditemViewController.swift
//  TravelrDetail
//
//  Created by 이우재 on 2016. 8. 19..
//  Copyright © 2016년 LEE. All rights reserved.
//

import UIKit

class AdditemViewController: UIViewController {

    @IBOutlet weak var price: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancel(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func done(sender: AnyObject) {
        //텍스트필드 읽어서
        
        //let japanItem1 = Item(100000, Currency(rawValue:0)!, 0, 4, 1) // 면세점에서 원화로 삼
        let newprice = Double(self.price.text!)
        //let newcategory = self.categoryField.text
        
        
        
        
        //변수 만들고
        
        //모달 내리면서 아래쪽 로드
        
        let presentingVC:UITabBarController = self.presentingViewController as! UITabBarController
        let selectedVC = presentingVC.selectedViewController as! UINavigationController
        let itemListVC = selectedVC.topViewController as! TravelrTableViewController
        
        let newitem = Item(newprice!,Currency(rawValue: 0)!, 0, 4,1)
        
        
        itemListVC.addNewItem(newitem)
        
        
        self.dismissViewControllerAnimated(true, completion: {
            itemListVC.tableView.reloadData()
            
        })
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        if segue.identifier == "doneUnwind"{
            let destVC = segue.destinationViewController as! TravelrTableViewController
            
            let newprice = Double(self.price.text!)
            let newitem = Item(newprice!,Currency(rawValue: 0)!, 0, 4,1)
            destVC.addNewItem(newitem)
        
        }
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
