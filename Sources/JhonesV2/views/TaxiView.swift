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

        travelCountDown()

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

    func travelCountDown()""
        let timeTravelRamdom = Int.random(in: 0..<16)

        print("El viaje durara ", timeTravelRamdom, " segundos y terminara en..." )

            //await Task.sleep(UInt64 1 * Double(NSEC_PER_SEC)))

            for coldownTime in   (0...timeTravelRamdom).reversed(){ 

            print(coldownTime)

        }

    }

}
