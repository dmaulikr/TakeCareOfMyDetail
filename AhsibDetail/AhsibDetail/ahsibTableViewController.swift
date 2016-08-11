//
//  ahsibTableViewController.swift
//  AhsibDetail
//
//  Created by STEP on 2016. 8. 11..
//  Copyright © 2016년 STEP. All rights reserved.
//

import UIKit

class ahsibTableViewController: UITableViewController {
    
    
    var trip:[SeoulTrip] = []

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let korea = SeoulTrip()
        korea.name = "고려대"
        korea.info = "안암에 있는 고려대입니다. 9월에는 고연전이 있죠! "
        korea.subway = 3
        
        let hongdae = SeoulTrip()
        hongdae.name = "홍대"
        hongdae.info = "홍대입니다. 20대의 젊은 사람들이 많이 찾는 공간입니다."
        hongdae.subway = 2
        
        let sinchon = SeoulTrip()
        sinchon.name = "신촌"
        sinchon.info = "대학가들이 많은 신촌입니다. 백화점과 각종 맛집들이 있습니다."
        sinchon.subway = 2
        
        let bucchon = SeoulTrip()
        bucchon.name = "북촌"
        bucchon.info = "북촌입니다. 이쁜 한옥이 많고 외국인들을 상대로하는 가게들이 많습니다."
        bucchon.subway = 2
        
        let hanriver = SeoulTrip()
        hanriver.name = "한강"
        hanriver.info = "한강입니다. 수상레저를 즐기는 사람이 많습니다. 유람선도 있죠!"
        hanriver.subway = 2

        
        
        trip += [korea,hongdae,sinchon,bucchon,hanriver]
        
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
        return trip.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("triptrip", forIndexPath: indexPath)

        let currentTrip = trip[indexPath.row]
        cell.textLabel!.text=currentTrip.name
        cell.detailTextLabel?.text = String(currentTrip.info)

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
