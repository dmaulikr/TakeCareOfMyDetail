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
    

//제일 아래쪽prepareforSEgue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //목적지 뷰 컨트롤러 확보
        let destVC = segue.destinationViewController as! PlanDetailViewController//세그웨이는 목적지 뷰 컨트롤러가 어딘지 알고있다
        
        //테이블 뷰에서 선택된 오브젝트 확보
        let selectedIndex:NSIndexPath = self.tableView.indexPathForSelectedRow!
        let selected:Plan = self.Plans[selectedIndex.row]
        
        //목적지 뷰 컨트롤러에 선택된 오브젝트 전달
        //받을수있는 준비 시키기
        destVC.currentPlan = selected // as에다가 ?로 처리할거면 destVC에서 처리해야
        
        
    }

}
