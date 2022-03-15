
class TaxiView{

    func callResult(){
        //print("A taxi will come to your home soon!\nApp finished.")

        print("Insert point A")
        var pointA = readLine()
        print("Insert point B")
        var pointB = readLine()

        print("")
        print("La lista de taxistas disponibles para su area es: ")
        

        printListTaxiDrivers()

        print("")
        print("Cual taxista desea seleccionar?")
        guard let selectedTaxiDriver = readLine() else {return}
        guard let option = Int(selectedTaxiDriver) else { return }

        selectTaxiDriver(numberTaxiDriver: option )

        //UBICACION DEL TIMER DE VIAJE

        print("Su viaje a terminado, por favor calififque el conductor!")
        guard let calificationTaxiDriver = readLine() else {return}
        guard let rate = Double(calificationTaxiDriver) else { return }

        rateTaxiDriver(numberTaxiDriver: option, rate: rate)
        
    }


    func printListTaxiDrivers(){

        let taxiDrivers = listTaxiDrivers

        //taxiDriver.forEach({print($0.nombre ?? "")})

        var count = 1
        for taxiDriver in taxiDrivers {
    
            print(count,"- ", taxiDriver.nombre ?? "")
            count+=1
            
        }

    }

    func selectTaxiDriver(numberTaxiDriver: Int){
        let taxiDrivers = listTaxiDrivers
        print("El taxista que selecciono fue \(taxiDrivers[numberTaxiDriver-1].nombre ?? "")")
    }

    func travelCountDown(){ 
        let timeTravelRamdom = Int.random(in: 5..<16)

        print("El viaje durara ", timeTravelRamdom, " segundos y terminara en..." )

            //await Task.sleep(UInt64 1 * Double(NSEC_PER_SEC)))

            // let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), 
            // userInfo: nil, repeats: true) 

            //print(coldownTime)

    }

    

    func rateTaxiDriver(numberTaxiDriver: Int, rate: Double){


        let taxiDriver = listTaxiDrivers
        taxiDriver[numberTaxiDriver-1].calificacion = rate

        let cantidadViajes = (taxiDriver[numberTaxiDriver-1].viajes = taxiDriver[numberTaxiDriver-1].viajes + 1)


        //let avgRate = (taxiDriver[numberTaxiDriver-1].calificacion)/cantidadViajes

        print("El promedio actual de calificacion del conductor es: \(taxiDriver[numberTaxiDriver-1].calificacion)")
        print("El conductor ha hecho ", taxiDriver[numberTaxiDriver-1].viajes, " viajes")
        

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
