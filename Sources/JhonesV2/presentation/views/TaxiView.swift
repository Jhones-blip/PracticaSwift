import Foundation
class TaxiView{

    func callResult(){
        

        print("Please insert point of origin") 
        var pointOriginTravel = readLine()
        print("Please insert destination point")
        var finalDestinationTravel = readLine()

        print("")
        print("The list of available taxi drivers is: ")
        
        let taxiDriver = TaxiDriverLogic()
        taxiDriver.printListTaxiDrivers()

        print("")
        print("Which taxi driver do you want to select?")
        guard let selectedTaxiDriver = readLine() else {return}
        guard let selectionTaxiDriver = Int(selectedTaxiDriver) else { return }

        taxiDriver.selectTaxiDriver(numberTaxiDriver: selectionTaxiDriver )

        //UBICACION DEL TIMER DE VIAJE
        taxiDriver.travelCountDown()

        taxiDriver.rateTaxiDriver(numberTaxiDriver: selectionTaxiDriver)

        let home = HomeTaxiApp()
        home.homeTaxi()
    
    }

}


// func foo() async {
//     let timeTravelRamdom = Int.random(in: 5..<16)
//     print("El viaje durara ", timeTravelRamdom, " segundos y terminara en..." )
    
    
//    for coldownTime in   (0...timeTravelRamdom).reversed(){ 
//        await Task.sleep(UInt64(1 * Double(timeTravelRamdom)))
//        print(coldownTime)
//    }
// }

// func timer() {
    
//         let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)

//     }

// @objc func fireTimer() {

//         print("Timer fired!")
// }
