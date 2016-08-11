//
//  EPLTeamTableViewController.swift
//  Sykim94Detail
//
//  Created by cscoi028 on 2016. 8. 11..
//  Copyright © 2016년 KimSeongYup. All rights reserved.
//

import UIKit

class EPLTeamTableViewController: UITableViewController {

    var EPLTeams:Array<EPLTeam> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let leicester = EPLTeam(name: "Leicester", point: 81, win: 23, draw: 12, lose: 3)
        let arsenal = EPLTeam(name: "Arsenal", point: 71, win: 20, draw: 11, lose: 7)
        let tottenham = EPLTeam(name: "Tottenham", point: 70, win: 19, draw: 13, lose: 6)
        let mancity = EPLTeam(name: "ManCity", point: 66, win: 19, draw: 9, lose: 10)
        let manunited = EPLTeam(name: "ManUnited", point: 66, win: 19, draw: 9, lose: 10)
        
        EPLTeams += [leicester, arsenal, tottenham, mancity, manunited]
        
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
        return EPLTeams.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("EPLTeam Cell", forIndexPath: indexPath)

        let currentEPLTeam = EPLTeams[indexPath.row]
        cell.textLabel!.text = currentEPLTeam.name
        cell.detailTextLabel?.text = String(currentEPLTeam.point)


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
