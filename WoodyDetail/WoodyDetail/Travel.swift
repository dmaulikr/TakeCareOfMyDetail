//
//  Player.swift
//  WoodyDetail
//
//  Created by 이우재 on 2016. 8. 11..
//  Copyright © 2016년 LEE. All rights reserved.
//

import Foundation
import UIKit

class Item {
    
    var price : Double
    var currency : String
    var pay : String
    var category : String
    var date : String // 어떤 타입?
    var photo : UIImage?
    
    init(_ _price:Double, _ _currency:String, _ _pay:String, _ _category:String, _ _date:String ){
        
        price = _price
        currency = _currency
        pay = _pay
        category = _category
        date = _date
        
    }
    
    
    
}

class TravelWhere {
    
    var title : String
    var period : Double // 기간 어떤타입?? 데이트피커에서 받아와야함
    
    var initCardBudget:Double = 0
    var initCashBudget:Double = 0
    var initTotalBudget:Double = 0
    
    var items : [Item] = []
    
    init(_ _title:String, _ _period:Double, _ _cardBudget:Double, _ _cashBudget:Double){
        
        title  = _title
        period = _period
        initCardBudget = _cardBudget
        initCashBudget = _cashBudget
        initTotalBudget = _cardBudget + _cashBudget
    }
    
    // 여행안에 item들이 존재한다면 쓴돈, 남은돈 계산해주는 함수
    
    // 1. 지불수단별로 아이템들 계산하여 카드쓴돈, 현금쓴돈, 모두쓴돈, 카드남은돈, 현금쓴돈, 모두남은돈 리턴
    
//    func PayByBudget() -> (cardSpend:Double, cashSpend:Double, totalSpend:Double, cardRemian:Double, cashRemain:Double, totalRemain:Double){
//        
//        var card:Double = 0
//        var cash:Double = 0
//        
//        
//        if let items = items{
//            let cardContent = items.filter({ $0.pay == "card" })
//            
//            for i in cardContent{
//                card += i.price
//            }
//            
//            let cashContent = items.filter({ $0.pay == "cash" })
//            
//            for i in cashContent{
//                cash += i.price
//            }
//        }
//        
//        let cardremain = initCardBudget-card
//        let cashremain = initCashBudget-cash
//        let totalspend = card + cash
//        let totalremain = cardremain + cashremain
//        
//        return (card,cash,totalspend,cardremain,cashremain,totalremain)
//        
//    }
//    
//    
//    // 2. 화폐단위별로 아이템들 계산해주는 함수
//    
//    
//    // 3. 지불수단별로 아이템들 분류한 배열을 리턴하는 함수
//    
//    func itemsByPay() -> (cardItems:[Item], cashItems:[Item]){
//        
//        var card:[Item] = []
//        var cash:[Item] = []
//        
//        if let items = items{
//            let carditems = items.filter({ $0.pay == "card" })
//            card = carditems
//            
//            let cashitems = items.filter({ $0.pay == "cash" })
//            cash = cashitems
//            
//        }
//        
//        return(card,cash)
//    }
//    
//    // 4. 날짜별로 아이템 분류하는 배열 리턴하는 함수
//    
//    // 5. 데이트피커로 받은 데이터값을 이용해 년,월,일로 나누어 print해주는 함수
//    // 비용추가페이지에서 추가시킬 날짜를 선택하도록 하고 보여주는 페이지는 전체 목록을 보여주기(비용추가에서 날짜선택 기본값은 전에 입력했던 값으로 해노음)
    
    
}


    
