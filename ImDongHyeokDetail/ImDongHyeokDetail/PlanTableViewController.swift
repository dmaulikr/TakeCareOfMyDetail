//
//  PlanTableViewController.swift
//  ImDongHyeokDetail
//
//  Created by cscoi011 on 2016. 8. 11..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import UIKit

class PlanTableViewController: UITableViewController {
    
    var Plans:[Plan] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let plan1 = Plan(name: "컴퓨터구조")
        plan1.achieve = 30
        plan1.start = (3,10,23)
        plan1.end = (5,20,40)
        
        let plan2 = Plan(name: "알고리즘")
        plan2.achieve = 50
        plan2.start = (5,30,0)
        plan2.end = (6,10,0)
        
        let plan3 = Plan(name: "OS")
        plan3.achieve = 100
        plan3.start = (7,30,30)
        plan3.end = (8,40,20)
        
        Plans += [plan1, plan2, plan3]
    
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
        return Plans.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlanCell", forIndexPath: indexPath)

        let currentPlan = Plans[indexPath.row]
        cell.textLabel!.text = currentPlan.name
        cell.detailTextLabel?.text = String(currentPlan.achieve)
        return cell
    }
    



}
