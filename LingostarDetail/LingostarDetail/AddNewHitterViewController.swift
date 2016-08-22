//
//  AddNewHitterViewController.swift
//  LingostarDetail
//
//  Created by Lingostar on 2016. 8. 19..
//  Copyright © 2016년 CodersHigh. All rights reserved.
//

import UIKit

class AddNewHitterViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var averageField: UITextField!
    
    @IBOutlet weak var teamField: UITextField!
    
    /*
    @IBAction func cancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    @IBAction func done(sender: AnyObject) {
        //텍스트 필드 읽어서 
        let newName = self.nameField.text
        let newHitter = Hitter(name: newName!)
        newHitter.average = Double(self.averageField.text!)!

        
        //새로운 선수 만들고
        
        //모달 내리면서 아래쪽 리로드
        
        let presentingVC = self.presentingViewController as! UINavigationController
        let hitterListVC = presentingVC.topViewController as! HitterTableViewController
        /*var doosanList = hitterListVC.hitters["두산"]
        doosanList?.append(newHitter)*/
        hitterListVC.addNew(newHitter)
        
        self.dismissViewControllerAnimated(true, completion: {
            //hitterListVC.tableView.reloadData()
        })
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }

    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "DoneUnwind" {
            let destVC = segue.destinationViewController as! HitterTableViewController
            
            let newName = self.nameField.text
            let newHitter = Hitter(name: newName!)
            newHitter.average = Double(self.averageField.text!)!
            
            destVC.addNew(newHitter)
        }
    }


}
