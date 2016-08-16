//
//  HitterTableViewController.swift
//  LingostarDetail
//
//  Created by Lingostar on 2016. 8. 16..
//  Copyright © 2016년 CodersHigh. All rights reserved.
//

import UIKit

class Hitter {
    var name:String
    var average:Double
    
    init(name:String) {
        self.name = name
        self.average = 0.0
    }
}

class HitterTableViewController: UITableViewController {

    var hitters:[Hitter] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
        let mino = Hitter(name: "강민호")
        mino.average = 3.00
        let muno = Hitter(name: "김문호")
        muno.average = 3.12
        
        hitters += [mino, muno]
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
        return hitters.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("HitterCell", forIndexPath: indexPath)

        let hitterForCell = hitters[indexPath.row]
        cell.textLabel!.text = hitterForCell.name
        cell.detailTextLabel?.text = String(hitterForCell.average)

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
        //목적지 뷰 컨트롤러 확보
        let destVC = segue.destinationViewController as! HitterDetailViewController
        
        //테이블 뷰에서 선택된 오브젝트 확보
        let selectedIndex:NSIndexPath = self.tableView.indexPathForSelectedRow!
        let selected:Hitter = self.hitters[selectedIndex.row]
        
        //목적지 뷰 컨트롤러에 선택된 오브젝트 전달
        destVC.currentHitter = selected
    }


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
