//
//  BreweryTableViewController.swift
//  JeronimoxcxDetail
//
//  Created by cscoi017 on 2016. 8. 11..
//  Copyright © 2016년 Sun. All rights reserved.
//

import UIKit

class BreweryTableViewController: UITableViewController {
    
    var brewerys:[Brewery] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let gangwon1 = Brewery(name:"버드나무")
        gangwon1.location = (37.74,128.88)
        gangwon1.ratings = 4.2
        gangwon1.visited = 25
        
        
        let gyeonggi1 = Brewery(name:"Playground")
        gyeonggi1.location = (37.67,126.68)
        gyeonggi1.ratings = 3.9
        gyeonggi1.visited = 130
        
        let gyeonggi2 = Brewery(name:"The Booth")
        gyeonggi2.location = (37.39,127.09)
        gyeonggi2.ratings = 3.5
        gyeonggi2.visited = 52
        
        let gyeonggi3 = Brewery(name:"빅")
        gyeonggi3.location = (37.40,126.72)
        gyeonggi3.ratings = 4.3
        gyeonggi3.visited = 160
        
        let seoul1 = Brewery(name:"Amazing")
        seoul1.location = (37.54,127.04)
        seoul1.ratings = 2.0
        seoul1.visited = 98
        
        let seoul2 = Brewery(name:"굿맨")
        seoul2.location = (37.63,127.13)
        seoul2.ratings = 5.0
        seoul2.visited = 46
        
        let seoul3 = Brewery(name:"Vincent van Golo")
        seoul3.location = (37.51,127.02)
        seoul3.ratings = 3.4
        seoul3.visited = 33
        
        let choongnam1 = Brewery(name:"브루어리304")
        choongnam1.location = (36.83,127.03)
        choongnam1.ratings = 3.8
        choongnam1.visited = 10
        
        let jeonbook1 = Brewery(name:"장 앤 크래프트")
        jeonbook1.location = (35.38,127.16)
        jeonbook1.ratings = 5.0
        jeonbook1.visited = 74
        
        let jeju1 = Brewery(name:"맥파이")
        jeju1.location = (33.50,126.61)
        jeju1.ratings = 4.2
        jeju1.visited = 25
        
        brewerys += [gangwon1,gyeonggi1,gyeonggi2,gyeonggi3,seoul1,seoul2,seoul3,choongnam1,jeonbook1,jeju1]
        
        
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
        return brewerys.count
    }

        override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("BreweryCell", forIndexPath: indexPath)

        // Configure the cell...
            let currentBrewery = brewerys[indexPath.row]
            cell.textLabel!.text = currentBrewery.name
            cell.detailTextLabel?.text = String(currentBrewery.ratings)
            

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
