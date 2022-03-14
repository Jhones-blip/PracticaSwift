class HomeTaxiApp{

    func homeTaxi(){

    print("Wellcome to taxiApp")

    print("you want to do")
    print("1. Taxi\n2. Support")
    guard var optionMenuSelected = readLine() else {return}

    let taxi = CallTaxiView()
    let suport = SupportView()

    var option = Int(optionMenuSelected)

        switch option {
            case 1:
            taxi.notify()

            case 2:
            suport.support()
            
            default:
            print("Opcion incorrecta")
        }

    }

}