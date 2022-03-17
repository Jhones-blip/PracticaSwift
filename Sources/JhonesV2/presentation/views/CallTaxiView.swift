class CallTaxiView{

    func notify(){

    print("You want to do")
    print("1. Call Taxi\n2. Back")
    guard let optionMenuSelected = readLine() else {return}

    let start = TaxiView()
    let home = HomeTaxiApp()
    
        
    let option = Int(optionMenuSelected)

        switch option {
            case 1:
            start.callResult()

            default:
            home.homeTaxi()
        }

    }
        
} 
