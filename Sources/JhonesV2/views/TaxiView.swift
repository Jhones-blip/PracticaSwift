import Foundation
class TaxiView{

    func callResult(){
        

        print("Inserte el punto de origen") 
        var pointA = readLine()
        print("Inserte el punto de destino")
        var pointB = readLine()

        print("")
        print("La lista de taxistas disponibles para su area es: ")
        

        printListTaxiDrivers()

        print("")
        print("Cual taxista desea seleccionar?")
        guard let selectedTaxiDriver = readLine() else {return}
        guard let selectionTaxiDriver = Int(selectedTaxiDriver) else { return }

        selectTaxiDriver(numberTaxiDriver: selectionTaxiDriver )

        //UBICACION DEL TIMER DE VIAJE
        travelCountDown()

        rateTaxiDriver(numberTaxiDriver: selectionTaxiDriver)

        let home = HomeTaxiApp()
        home.homeTaxi()
    
    }


    func printListTaxiDrivers(){

        let taxiDrivers = listTaxiDrivers

        //taxiDriver.forEach({print($0.nombre ?? "")})

        var count = 1
        for taxiDriver in taxiDrivers {
    
            print(count,"- ", taxiDriver.nombre ?? "", "- ", taxiDriver.carro ?? "", "- ", "Calificacion " ,taxiDriver.calificacion ?? "", "- " ," Puntaje ",taxiDriver.viajes ?? "")
            count+=1
            
        }

    }

    func selectTaxiDriver(numberTaxiDriver: Int){
        let taxiDrivers = listTaxiDrivers
        print("El taxista que selecciono fue \(taxiDrivers[numberTaxiDriver-1].nombre ?? "")")
    }

 
    func travelCountDown() { 
        let timeTravelRamdom = Int.random(in: 5..<16)

        print("El viaje durara ", timeTravelRamdom, " segundos " )

    }

    

    func rateTaxiDriver(numberTaxiDriver: Int){

        print("Su viaje a terminado, por favor calififque el conductor!")
        guard let calificationTaxiDriver = readLine() else {return}
        guard let rate = Double(calificationTaxiDriver) else { return }

        
        if rate <= 5 && rate >= 0 {

            let taxiDriver = listTaxiDrivers

            taxiDriver[numberTaxiDriver-1].calificacion = taxiDriver[numberTaxiDriver-1].calificacion + rate

            taxiDriver[numberTaxiDriver-1].viajes = taxiDriver[numberTaxiDriver-1].viajes + 1

            let avgRate = (taxiDriver[numberTaxiDriver-1].calificacion / taxiDriver[numberTaxiDriver-1].viajes)

            print("El promedio actual de calificacion del conductor es: ", avgRate)
            print("El conductor ha realizado ", taxiDriver[numberTaxiDriver-1].viajes, " viajes")
            print("")
            print("Gracias por viajar con nosotro vuelva pronto!")

        }else{

            print("Ops! ingrese una calificacon valida entre 0 y 5")
            // guard let calificationTaxiDriver = readLine() else {return}
            // guard let rate = Double(calificationTaxiDriver) else { return }


            rateTaxiDriver(numberTaxiDriver: numberTaxiDriver)
        }
        

        
        

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
