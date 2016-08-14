//
//  Travelr.swift
//  TravelrDetail
//
//  Created by 이우재 on 2016. 8. 14..
//  Copyright © 2016년 LEE. All rights reserved.
//

import Foundation
import UIKit

// 지출 항목 클래스
class Item {
    
    var price : Double
    var currency : String
    var pay : String
    var category : String // 나중에 radio button 이나 아이콘선택으로 대체
    var date = NSDate() // 현재시간 받기 <- 초기선택은 현재 년,월,일이고 데이트피커로 선택해 넣기
    var numberOfPerson : Int // 피커로 인원수 받기
    var photo : UIImage?
    
    init(_ _price:Double, _ _currency:String, _ _pay:String, _ _category:String, _ _numberofperson:Int ){
        
        price = _price
        currency = _currency
        pay = _pay
        category = _category
        numberOfPerson = _numberofperson
        
    }
    
    // 지출 항목을 입력할때의 시간을 년,월,일로 써주는 함수 <- 아마 직접 프로그래밍시에 필요할듯
    
    func ItemDate() -> (String){
        
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy년 MM월 dd일"
        let itemdate:String = formatter.stringFromDate(date)
        
        return (itemdate)
        
    }
}


// TravelWhere클래스 안에 쓰일 여행예산(화폐단위,카드,현금) 클래스
class Budget {
    
    var Card:Double
    var Cash:Double
    var Total:Double
    var Currency:String
    
    init(_ card:Double,_ cash:Double,_ currency:String){
        
        Card = card
        Cash = cash
        Currency = currency
        Total = cash + card
        
    }
}


// 여행 클래스
class TravelWhere {
    
    var title : String
    var period : String //UIDatePicker // 기간 어떤타입?? 데이트피커에서 받아와야함
    var background : UIImage?
    var plan : String?
    var items : [Item]?
    var initBudget:Budget///////그냥 배열 말고 budget으로 만 받아서 한화페로만 하기
    
    init(_ _title:String, _ _period:String ,_ _budget:Budget){
        
        title  = _title
        period = _period
        initBudget = _budget
        
    }
    
    // 1. 지불수단별로 아이템들 분류한 배열을 리턴하는 함수
    
    func itemsByPay() -> (cardItems:[Item], cashItems:[Item]){
        
        var card:[Item] = []
        var cash:[Item] = []
        
        if let items = items{
            
            let carditems = items.filter({ $0.pay == "card" })
            card = carditems
            
            let cashitems = items.filter({ $0.pay == "cash" })
            cash = cashitems
            
        }
        
        return(card,cash)
    }
    
    
    // 2. 지불수단별로 아이템들 계산하여 카드쓴돈, 현금쓴돈, 모두쓴돈, 카드남은돈, 현금남은돈, 모두남은돈
    
    func MoneyByPay() -> (cardSpend:Double, cashSpend:Double, totalSpend:Double, cardRemian:Double, cashRemain:Double, totalRemain:Double){
        
        var card:Double = 0
        var cash:Double = 0
        
        
        if let items = items{
            let carditems = items.filter({ $0.pay == "card" })
            
            for i in carditems{
                card += i.price
            }
            
            let cashitems = items.filter({ $0.pay == "cash" })
            
            for i in cashitems{
                cash += i.price
            }
        }
        
        let cardremain = initBudget.Card-card
        let cashremain = initBudget.Cash-cash
        let totalspend = card + cash
        let totalremain = cardremain + cashremain
        
        return (card,cash,totalspend,cardremain,cashremain,totalremain)
        
    }
    
}



