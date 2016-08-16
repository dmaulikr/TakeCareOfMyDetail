//
//  StudentTableViewController.swift
//  FirifafaDetail
//
//  Created by cscoi018 on 2016. 8. 11..
//  Copyright © 2016년 JJLee. All rights reserved.
//

import UIKit

class StudentTableViewController: UITableViewController {

    var students:Array<Student> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let jeongjoo = Student(name: "이정주")
        jeongjoo.major = "언어"
        jeongjoo.grade = 2
        jeongjoo.score = 4.0
        
        let hyeongjun = Student(name: "박형준")
        hyeongjun.major = "언어"
        hyeongjun.grade = 2
        hyeongjun.score = 2.2
        
        let sohee = Student(name: "이소희")
        sohee.major = "외식경영"
        sohee.grade = 2
        sohee.score = 4.1
        
        let seongjun = Student(name: "홍성준")
        seongjun.major = "불어불문"
        seongjun.grade = 3
        seongjun.score = 3.5
        
        
        students += [jeongjoo, hyeongjun, sohee, seongjun]
        
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
        return students.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("StudentCell", forIndexPath: indexPath)

        // Configure the cell...
        let currentStudent = students[indexPath.row]
        cell.textLabel!.text = currentStudent.name
        cell.detailTextLabel?.text = currentStudent.major + "학과 " + String(currentStudent.grade) + "학년"
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
