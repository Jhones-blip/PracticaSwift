
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

        print("Su viaje a terminado, por favor calififque el conductor!")
        guard let calificationTaxiDriver = readLine() else {return}
        guard let rate = Double(calificationTaxiDriver) else { return }

        rateTaxiDriver(numberTaxiDriver: selectionTaxiDriver, rate: rate)

        print("Desea realizar otro viaje y/n")
        guard let answerTravel = readLine() else { return } 

        repeatTravel(answer: answerTravel)
    
    }

    func repeatTravel(answer: String){
        repeat{
        callResult()
        }while answer == "y"
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

        let cantidadViajes = (taxiDriver[numberTaxiDriver-1].viajes += taxiDriver[numberTaxiDriver-1].viajes + 1)


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
