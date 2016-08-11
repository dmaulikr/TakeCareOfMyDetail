//
//  SportTableViewController.swift
//  Rkdthd1234Detail
//
//  Created by cscoi010 on 2016. 8. 11..
//  Copyright © 2016년 kangsujin. All rights reserved.
//

import UIKit





class SportTableViewController: UITableViewController {
    
    var sports:[Sport] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        let archery = Sport(name: "양궁", typeofMedal: "금")
        let basketball = Sport(name: "농구", typeofMedal: "금")
        let swimming = Sport(name: "수영", typeofMedal: "은")
        let tennis = Sport(name: "테니스", typeofMedal: "은")
        let taekwondo = Sport(name: "태권도", typeofMedal: "동")
        let marathon = Sport(name: "마라톤", typeofMedal: "동")


        
        
        sports += [archery, basketball, swimming, tennis, taekwondo, marathon]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return sports.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SportCell", forIndexPath: indexPath )
        
        
        
        
        let currentSport = sports[indexPath.row]
        cell.textLabel!.text = currentSport.name
        cell.detailTextLabel?.text = currentSport.typeofMedal
        
        return cell
        
        
   
    }


}

