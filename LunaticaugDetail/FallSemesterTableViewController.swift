//
//  FallSemesterTableViewController.swift
//  LunaticaugDetail
//
//  Created by 양문영 on 2016. 8. 11..
//  Copyright © 2016년 moonyoung. All rights reserved.
//

import UIKit

class FallSemesterTableViewController: UITableViewController {

    @IBOutlet var ClassName: UILabel!
    @IBOutlet var classprofessor: UILabel!
    
    //var currentClass:FallClass = nil?
    var fallClasses:Array<FallClass>=[]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        let iMEN216 = FallClass(classID : "IMEN216",className :"OR-I 및 실습", classpoint : 3, professor :"최인찬", classType : .Essential )
        
        let iMEN212 = FallClass(classID : "IMEN212",className :"자료구조 및 알고리즘", classpoint : 3, professor :"반기민", classType : .Essential )
        
        fallClasses += [iMEN216, iMEN212]
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
        
        
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
        return fallClasses.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("fallclasscell", forIndexPath: indexPath)

        // Configure the cell...
        
        let classNames = fallClasses[indexPath.row].className
        
        let striggg = "hohohoho"
        //let classNamae = classNames[indexPath.row]
        cell.textLabel!.text = classNames
        cell.detailTextLabel!.text = striggg

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
        
        if let destVC = segue.destinationViewController as? ViewController, let selectedIndex:NSIndexPath = self.tableView.indexPathForSelectedRow{
            // 테이블 뷰에서 선택된 오브젝트 확보
            
            let selected:FallClass = FallClass![selectedIndex.row]
            // 목적지 뷰 컨트롤러에 선택된 오브젝트 전달
            destVC.currentTravelr = selected
        
        
        
    } */ 
    

}
