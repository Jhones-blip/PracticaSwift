class CallTaxiView{

    func notify(){

    print("you want to do")
    print("1. Call Taxi\n2. Back")
    guard var optionMenuSelected = readLine() else {return}

    let start = TaxiView()
    let home = HomeTaxiApp()
    
        
    var option = Int(optionMenuSelected)

        switch option {
            case 1:
            start.callResult()

            default:
            home.homeTaxi()
        }

    }
        
} 
