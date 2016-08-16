//
//  Travelr.swift
//  TravelrDetail
//
//  Created by 이우재 on 2016. 8. 14..
//  Copyright © 2016년 LEE. All rights reserved.
//

import Foundation
import UIKit

// 환율계산 및 화폐단위심볼
enum Currency:Int {
    case KRW = 0, USD, JPY, EUR, GBP, CNY
    
    var ratio:Double { // 원화로의 환율
        get{
            switch self {
            case .KRW : return 1.0
            case .USD : return 1104.50
            case .JPY : return 10.92
            case .EUR : return 1236.76
            case .GBP : return 1435.74
            case .CNY : return 166.31
            }
        }
    }
    
    var symbol:String {
        get{
            switch self {
            case .KRW : return "₩"
            case .USD : return "$"
            case .JPY : return "¥"
            case .EUR : return "€"
            case .GBP : return "£"
            case .CNY : return "元"
            }
        }
    }
}


// 지출 항목 클래스
class Item {
    
    var price : Double
    var currency : Currency
    var pay : String
    var category : String // 나중에 radio button 이나 아이콘선택으로 대체
    var date = NSDate() // 현재시간 받기 <- 초기선택은 현재 년,월,일이고 데이트피커로 선택해 넣기
    var numberOfPerson : Int // 피커로 인원수 받기
    var photo : UIImage?
    
    init(_ _price:Double, _ _currency:Currency, _ _pay:String, _ _category:String, _ _numberofperson:Int ){
        
        price = _price
        currency = _currency
        pay = _pay
        category = _category
        numberOfPerson = _numberofperson
        
    }
    
    // 지출 항목을 입력할때의 시간을 년,월,일로 써주는 함수
    
    func ItemDate() -> (String){
        
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy년 MM월 dd일"
        let itemdate:String = formatter.stringFromDate(date)
        
        return (itemdate)
        
    }
    
    // 각 항목의 가격을 원화로 바꿈 ( 나중에 계산 필요시 쓰기 )
    func CurrencyToWon() -> Double {
        return  price * currency.ratio
    }
}


// 카드,현금 각각의 예산클래스
class Budget {
    
    var CardOrCash:String
    var Money:Double
    var BudgetCurrency:Currency // 원, 달러, 엔, 유로, 파운드, 위안
    
    // 카드 예산의 경우 화폐단위를 원화로 하기
    init(_ _cardorcash:String,_ _money:Double,_ _currency:Currency){
        
        CardOrCash = _cardorcash
        Money = _money
        BudgetCurrency = _currency
        
    }
    
    //각 예산을 원화로 바꿈
    func CurrencyToWon() -> Double {
        return  Money * BudgetCurrency.ratio
    }
}


// 여행 클래스
class TravelWhere {
    
    var title : String
    var period : String //UIDatePicker // 기간 어떤타입?? 데이트피커에서 받아와야함
    var background : UIImage?
    var plan : String?
    var items : [Item]?
    var initCardBudget:Budget
    var initCashBudget:[Budget] // 현금의 경우 여러가지 단위 받게 함 (배열로)
    
    init(_ _title:String, _ _period:String ,_ _cardbudget:Budget,_ _cashbudget:[Budget]){
        
        title  = _title
        period = _period
        initCardBudget = _cardbudget
        initCashBudget = _cashbudget
        
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
    
    
    // 2. 지불수단별로 아이템들 계산하여 카드쓴돈, 현금쓴돈, 카드남은돈, 현금남은돈 ( 인풋으로 기준 화폐단위 넣어주면 분류해서 아웃풋줌)
    
    func MoneyByPayCurrency(indexCurrency:Currency) -> (cardSpend:Double, cashSpend:Double, cardRemian:Double, cashRemain:Double){
        
        var cardspend:Double = 0
        var cashspend:Double = 0
        
        
        if let items = items{
            let carditems = items.filter({ $0.pay == "card" })
            let cardCurrencyitems = carditems.filter({ $0.currency.symbol == indexCurrency.symbol})
            
            for i in cardCurrencyitems{
                cardspend += i.price
            }
            
            let cashitems = items.filter({ $0.pay == "cash" })
            let cashCurrencyitems = cashitems.filter({ $0.currency.symbol == indexCurrency.symbol})
            
            for i in cashCurrencyitems{
                cashspend += i.price
            }
        }
        
        let cardremain = initCardBudget.Money-cardspend
        
        let filterdCashBudget = initCashBudget.filter({$0.BudgetCurrency.symbol == indexCurrency.symbol}) // 현금 예산 중 기준 화폐단위와 일치하는거 골라냄
        let cashremain = filterdCashBudget[0].Money-cashspend // 기준화폐단위와 일치하는 예산은 하나 일 것이기 때문에 [0] 써도 무관
        
        return (cardspend,cashspend,cardremain,cashremain)
        
    }
    
}