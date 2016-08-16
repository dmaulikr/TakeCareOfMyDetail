//
//  TravelrViewController.swift
//  TravelrDetail
//
//  Created by 이우재 on 2016. 8. 16..
//  Copyright © 2016년 LEE. All rights reserved.
//

import UIKit

class TravelrViewController: UIViewController {

    
    @IBOutlet weak var cardWonSpend: UILabel!
    
    @IBOutlet weak var cardYenSpend: UILabel!
    
    @IBOutlet weak var cashWonSpend: UILabel!
    
    @IBOutlet weak var cashYenSpend: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardWonSpend.text = "Won" + String(japanTravel.MoneyByPayCurrency(Currency(rawValue: 0)!).cardSpend)
        cardYenSpend.text = "Yen" + String(japanTravel.MoneyByPayCurrency(Currency(rawValue: 2)!).cardSpend)
        cashWonSpend.text = "Won" + String(japanTravel.MoneyByPayCurrency(Currency(rawValue: 0)!).cashSpend)
        cashYenSpend.text = "Yen" + String(japanTravel.MoneyByPayCurrency(Currency(rawValue: 2)!).cashSpend)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
