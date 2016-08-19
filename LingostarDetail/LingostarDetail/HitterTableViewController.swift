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
    var imageName:String
    
    init(name:String) {
        self.name = name
        self.average = 0.0
        self.imageName = "DefaultImage"
    }
} // Hitter class 설계

class HitterTableViewController: UITableViewController {

    var hitters:[String:[Hitter]] = [:]
    
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
        let lotte:[Hitter] = [mino, muno]
        
        let jaewon = Hitter(name:"오재원")
        jaewon.average = 2.1
        let weiji = Hitter(name:"양의지")
        weiji.average = 2.99
        let doosan:[Hitter] = [jaewon, weiji]
        
        hitters = ["롯데":lotte, "두산":doosan]
        //뷰가 로드되기 전에 hitters 딕션에 롯데와 두산 저장
    } //뷰 로드되기 전에 하는 일.
    
    @IBAction func toHitterList(unwind:UIStoryboardSegue) {
        
    } //이건 뭐냐.
    
    
    func addNew(newHitter:Hitter) {
        
        var doosanList = hitters["두산"]
        doosanList?.append(newHitter)
        
        hitters["두산"] = doosanList
        
        self.tableView.reloadData()
    } //Hitter를 받아서 두산 뒤에 확장하고 테이블을 리로드

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return hitters.count
    } // 섹션의 개수를 리턴

    override func tableView(tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let teamNames:[String] = Array(hitters.keys)
        let teamName:String = teamNames[section]
        let teamHitters:[Hitter] = hitters[teamName]!
        return teamHitters.count
    }//섹션의 이름을 지정하고 각 섹션당 몇 줄인지 리턴함 //Nearbuy 에선 불필요
    
    override func tableView(tableView: UITableView,
                            cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("HitterCell", forIndexPath: indexPath) as! HitterTableViewCell //cell의 파일을 HitterTableViewCell로 지정.
        
        let teamNames:[String] = Array(hitters.keys)
        let teamName:String = teamNames[indexPath.section]
        
        let teamForCell:[Hitter] = hitters[teamName]!
        let hitterForCell = teamForCell[indexPath.row]
        
        cell.nameLabel.text = hitterForCell.name
        cell.averageLabel.text = String(hitterForCell.average)
        cell.teamNameLabel.text = teamName

        return cell
    } // cell 내부 지정.
    
    override func tableView(tableView: UITableView,
                            titleForHeaderInSection section: Int)-> String? {
        let teamNames:[String] = Array(hitters.keys)
        let teamName:String = teamNames[section]
        
        return teamName
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
        
        if segue.identifier == "DetailSegue" {
            //목적지 뷰 컨트롤러 확보
            let destVC = segue.destinationViewController as! HitterDetailViewController
            
            //테이블 뷰에서 선택된 오브젝트 확보
            let selectedIndex:NSIndexPath = self.tableView.indexPathForSelectedRow!
            
            let teamNames:[String] = Array(hitters.keys)
            let teamName:String = teamNames[selectedIndex.section]
            
            let teamForCell:[Hitter] = hitters[teamName]!
            let selected:Hitter = teamForCell[selectedIndex.row]
            
            //목적지 뷰 컨트롤러에 선택된 오브젝트 전달
            destVC.currentHitter = selected
        }
    }
}
