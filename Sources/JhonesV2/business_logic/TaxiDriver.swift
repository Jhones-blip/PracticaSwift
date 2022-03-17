import Foundation
class TaxiDriverLogic {

    func printListTaxiDrivers(){

        let taxiDrivers = catalogueTaxiDrivers

        //taxiDriver.forEach({print($0.nombre ?? "")})

        var count = 1
        for taxiDriver in taxiDrivers {
    
            print(count,"- ", taxiDriver.nameTaxiDriver ?? "", "- ", taxiDriver.taxiDriverCarModel ?? "", "- ", "Calificacion " ,taxiDriver.taxiDriverRating ?? "", "- " ," Puntaje ",taxiDriver.taxiDriverTrips ?? "")
            count+=1
            
        }

    }

    func selectTaxiDriver(numberTaxiDriver: Int){
        let taxiDrivers = catalogueTaxiDrivers
        print("The selected taxi driver was \(taxiDrivers[numberTaxiDriver-1].nameTaxiDriver ?? "")")
    }

 
    func travelCountDown() { 
        let timeTravelRamdom = Int.random(in: 5..<16)

        print("The trip will last ", timeTravelRamdom, " seconds " )

    }

    

    func rateTaxiDriver(numberTaxiDriver: Int){

        print("Your trip is over, please rate the driver!")
        guard let calificationTaxiDriver = readLine() else {return}
        guard let rate = Double(calificationTaxiDriver) else { return }

        
        if rate <= 5 && rate >= 0 {

            let taxiDriver = catalogueTaxiDrivers

            taxiDriver[numberTaxiDriver-1].taxiDriverRating = taxiDriver[numberTaxiDriver-1].taxiDriverRating + rate

            taxiDriver[numberTaxiDriver-1].taxiDriverTrips = taxiDriver[numberTaxiDriver-1].taxiDriverTrips + 1

            let avgRate = (taxiDriver[numberTaxiDriver-1].taxiDriverRating / taxiDriver[numberTaxiDriver-1].taxiDriverTrips)

            print("The current average driver rating is: ", avgRate)
            print("The driver has done ", taxiDriver[numberTaxiDriver-1].taxiDriverTrips, " trips")
            print("")
            print("Thank you for traveling with us, come back soon!")

        }else{

            print("Oops! enter a valid rating between 0 and 5")
            // guard let calificationTaxiDriver = readLine() else {return}
            // guard let rate = Double(calificationTaxiDriver) else { return }


            rateTaxiDriver(numberTaxiDriver: numberTaxiDriver)
        }
        

        
        

    }
}