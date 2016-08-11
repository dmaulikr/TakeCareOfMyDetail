//: Playground - noun: a place where people can play

class DataCenter {
    var spaces:[Space] = []
    
    init(){
        let wirelaptop = Rooms(name:"유선노트북열람실", capacity: 258)
        let forreading = Rooms(name:"열람전용실", capacity: 326)
        let wholedayforreading = Rooms(name: "24시열람전용실", capacity:  276)
        let wirelesslaptop = Rooms(name:"무선노트북열람실", capacity:  209)
        let gradutate = Rooms (name:"대학원 열람실", capacity: 120)
        
        
        let firstreading = Rooms(name:"제1열람실(노트북 열람실)", capacity:96 )
        let secondreading = Rooms(name:"제2열람실", capacity: 103)
        let thirdreading = Rooms(name:"제3열람실", capacity: 106)
        let firstwebstudy = Rooms(name:"웹학습코너1", capacity: 28)
        let secondwebstudy = Rooms(name:"웹학습코너2", capacity: 24)
        
        
        
        let practiceprogram = Rooms(name:"프로그램실습", capacity: 18)
        let editfile = Rooms(name:"문서편집", capacity: 36)
        let searchinfo = Rooms(name:"정보검색", capacity: 132)
        let searchNAinfo = Rooms(name:"국회도서관자료검색", capacity: 12)
        let digitalscanning = Rooms(name:"디지털 스캐닝", capacity: 22)
        let digitalediting = Rooms(name:"디지털 에디팅", capacity: 21)
        let preview = Rooms(name:"시연대", capacity: 8)
        let multimedia = Rooms(name:"멀티미디어", capacity: 60)
        let virtualreality = Rooms(name:"가상현실", capacity: 4)
        let audio = Rooms(name:"오디오", capacity: 30)
        let video = Rooms(name:"비디오", capacity: 65)
        let sectionA = Rooms(name:"A구역", capacity: 140)
        let sectionB = Rooms(name:"B구역", capacity: 175)
        let sectionC = Rooms(name:"C구역", capacity: 76)
        let sectionD = Rooms(name:"D구역", capacity: 98)
        let sectionE = Rooms(name:"E구역", capacity: 187)
        let sectionF = Rooms(name:"F구역", capacity: 168)
        let sectionG = Rooms(name:"G구역", capacity: 27)
        let sectionH = Rooms(name:"H구역", capacity: 142)
        
        
        let commonreading = Rooms(name:"일반열람실", capacity: 408)
        let firstlaptopreading = Rooms(name:"노트북 열람실", capacity: 50)
        let searchinfocorner = Rooms(name:"정보검색코너", capacity: 30)
        let forthcommonreadingA = Rooms(name:"일반열람실 A", capacity: 94)
        let forthcommonreadingB = Rooms(name:"일반열람실 B", capacity: 112)
        let forthcommonreadingC = Rooms(name:"일반열람실 C", capacity: 105)
        let forthcommonreadingD = Rooms(name:"일반열람실 D", capacity: 111)
        let forthcommonreadingE = Rooms(name:"일반열람실 E", capacity: 123)
        let forthcommonreadingF = Rooms(name:"일반열람실 F", capacity: 94)
        let forthlapbookreading = Rooms(name:"노트북 열람실", capacity: 84)
        let fifthcommonreadingA = Rooms(name:"일반열람실 A", capacity: 72)
        let fifthcommonreadingB = Rooms(name:"일반열람실 B", capacity: 204)
        let fifthlaptopreading = Rooms(name:"노트북열람구역", capacity: 60)
        
        
        let laptopreadingA = Rooms(name:"노트북열람실A", capacity: 62)
        let laptopreadingB = Rooms(name:"노트북열람실B", capacity: 66)
        let laptopreadingC = Rooms(name:"노트북열람실C", capacity: 66)
        let laptopreadingD = Rooms(name:"노트북열람실D", capacity: 56)
        let laptopreadingE = Rooms(name:"노트북열람실E", capacity: 51)
        let readingroomA = Rooms(name:"열람실A", capacity: 62)
        let readingroomB = Rooms(name:"열람실B", capacity: 66)
        let readingroomC = Rooms(name:"열람실C", capacity: 66)
        let readingroomD = Rooms(name:"열람실D", capacity: 56)
        let readingroomE = Rooms(name:"열람실E", capacity: 56)
        
        
        
        
        let centerunderground = Structure(name:"중앙지하")
        let centerlibrary = Structure(name:"중앙도서관")
        let memorialhall = Structure(name:"백주년기념관")
        let sciencelibrary = Structure(name:"과학도서관")
        let hanasquare = Structure(name:"하나스퀘어")
        
        
        centerunderground.rooms = ["B1-중앙지하":[wirelaptop, forreading, wholedayforreading, wirelesslaptop, gradutate]]
        centerlibrary.rooms = ["1F-노트북열람실":[firstreading], "1F-제2열람실":[secondreading], "1F-제3열람실":[thirdreading], "1F-웹학습코너":[firstwebstudy, secondwebstudy]]
        memorialhall.rooms = ["1F-정보검색실":[practiceprogram, editfile, searchinfo, searchNAinfo], "1F-멀티미디어 제작실":[digitalscanning, digitalediting, preview], "2F-멀티미디어 열람실":[multimedia, virtualreality, audio, video], "4F-대열람실":[sectionA, sectionB, sectionC, sectionD, sectionE, sectionF, sectionG, sectionH]]
        sciencelibrary.rooms = ["1F-과학도서관 1층":[commonreading, firstlaptopreading, searchinfocorner], "4F-과학도서관":[forthcommonreadingA, forthcommonreadingB, forthcommonreadingC, forthcommonreadingD, forthcommonreadingE, forthcommonreadingF, forthlapbookreading], "5F-과학도서관":[fifthcommonreadingA, fifthcommonreadingB, fifthlaptopreading]]
        hanasquare.rooms = ["B1-하나스퀘어도서관":[laptopreadingA, laptopreadingB, laptopreadingC, laptopreadingD, laptopreadingE, readingroomA, readingroomB, readingroomC, readingroomD, readingroomE]]
        
        let humanity_campus = Space(name:"인문계 Campus")
        let scienceengineer_campus = Space(name:"이공계 Campus")
        let green_campus = Space(name:"녹지 Campus")
        
        humanity_campus.buildings = [centerunderground, centerlibrary, memorialhall]
        scienceengineer_campus.buildings = [sciencelibrary, hanasquare]
        green_campus.buildings = []
        
        spaces = [humanity_campus, scienceengineer_campus, green_campus]

    }
        //열람실

class Space{
    var name:String
    var buildings:[Structure]?
    init(name:String) {
        self.name = name
    }
}

class Structure {
    let name:String
    var rooms:[String:[Rooms]]?
    init(name:String){
        self.name = name
    }
}

class Rooms {
    
    var name:String
    var capacity:Int
    var capabletime:String?
    var occupiedseats:Int?
    //var available:가능과 불가능으로 나누기
    
    init(name:String, capacity:Int) {
        self.name = name
        self.capacity = capacity
    }
}

class  Reservation {
    var starttime:Int?
    var endtime:Int?
    var period:Int?
}