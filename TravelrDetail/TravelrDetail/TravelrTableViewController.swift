//
//  TravelrTableViewController.swift
//  TravelrDetail
//
//  Created by 이우재 on 2016. 8. 14..
//  Copyright © 2016년 LEE. All rights reserved.
//

import UIKit

let KRWCurrency = Currency(rawValue:0)
let JPYCurrency = Currency(rawValue:2)

// 제목: Japan, peirod: 2016.08.20-08.25, 카드예산:원화300000, 현금예산1:엔화100000/원화300000
var japanTravel:TravelWhere = TravelWhere("Japan", "2016.08.20-08.25" ,Budget("card",300000,Currency(rawValue:0)!), [Budget("cash",100000,Currency(rawValue:2)!), Budget("cash",300000,Currency(rawValue: 0)!)])

class TravelrTableViewController: UITableViewController {
    
    @IBOutlet var travlrListView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let japanItem1 = Item(100000, Currency(rawValue:0)!, "card", "shopping", 1) // 면세점에서 원화로 삼
        let japanItem2 = Item(10000, Currency(rawValue:2)!, "cash", "sleeping", 3) // 방값계산
        let japanItem3 = Item(1000, Currency(rawValue:2)!, "card", "moving", 1) // 일본 기차탐
        
        
        japanTravel.items = [japanItem1,japanItem2,japanItem3]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return japanTravel.items!.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TravelrCell", forIndexPath: indexPath)

        let item = japanTravel.items![indexPath.row]
        
        cell.textLabel!.text = item.currency.symbol
        cell.detailTextLabel?.text = String(item.price)

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
