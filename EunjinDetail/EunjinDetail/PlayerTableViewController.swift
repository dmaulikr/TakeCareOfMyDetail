//
//  PlayerTableViewController.swift
//  EunjinDetail
//
//  Created by eunjin Jo on 2016. 8. 11..
//  Copyright © 2016년 eunjin. All rights reserved.
//

import UIKit

class PlayerTableViewController: UITableViewController {
    
    var fruitlist:[Fruit] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let fruit1 = Fruit(name: "apple", price: 1000, color: "red", country: "korea", season: "fall")
        let fruit2 = Fruit(name: "tomato", price: 500, color: "red", country: "spain", season: "winter")
        let fruit3 = Fruit(name: "watermelon", price: 10000, color: "red", country: "japan", season: "summer")
        let fruit4 = Fruit(name: "cherry", price: 3000, color: "purple", country: "chile", season: "summer")
        let fruit5 = Fruit(name: "banana", price: 2600, color: "yellow", country: "philippines", season: "summer")
        let fruit6 = Fruit(name: "orange", price: 5000, color: "orange", country: "hawaii", season: "summer")
        
        fruitlist += [fruit1,fruit2,fruit3,fruit4,fruit5,fruit6]
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
        return fruitlist.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

         //Configure the cell...
        let currentFruit = fruitlist[indexPath.row]
        cell.textLabel?.text = currentFruit.name
        cell.detailTextLabel?.text = "\(currentFruit.price) 원"
        
        

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


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        // 목적지 뷰 컨트롤러 확보 + 테이블 뷰에서 선택된 오브젝트 확보
        if let destVC = segue.destinationViewController as? PlayerDetailViewController, let selectedIndex:NSIndexPath = self.tableView.indexPathForSelectedRow {
        
                let selected:Fruit = self.fruitlist[selectedIndex.row]
                
                // 목적지 뷰 컨트롤러에 선택된 오브젝트 전달
                destVC.currentFruit = selected
            
            
        }
        
        
        
    }

}
