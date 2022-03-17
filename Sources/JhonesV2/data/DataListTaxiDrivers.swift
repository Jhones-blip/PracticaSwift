class TaxiDriver{
    var nameTaxiDriver: String?
    var taxiDriverCarModel: String?
    var taxiDriverRating = 0.0
    var taxiDriverTrips = 0.0

    init(nameTaxiDriver: String, taxiDriverCarModel: String){ 
        self.nameTaxiDriver = nameTaxiDriver
        self.taxiDriverCarModel = taxiDriverCarModel
        
    }
}
    
let catalogueTaxiDrivers = [
    TaxiDriver(nameTaxiDriver: "Jhon", taxiDriverCarModel: "Mazda 2018"),
    TaxiDriver(nameTaxiDriver: "Pedro", taxiDriverCarModel: "Chevrolet 1999"),
    TaxiDriver(nameTaxiDriver: "Juan", taxiDriverCarModel: "Audi UT5"),
    TaxiDriver(nameTaxiDriver: "Juliana", taxiDriverCarModel: "Ferrari Gallador"),
    TaxiDriver(nameTaxiDriver: "Mathias", taxiDriverCarModel: "Jeep 2012"),
    TaxiDriver(nameTaxiDriver: "Pablo", taxiDriverCarModel: "Gallardo 2695"),
    TaxiDriver(nameTaxiDriver: "Lina", taxiDriverCarModel: "Renoult 115") ,
    TaxiDriver(nameTaxiDriver: "Carlos", taxiDriverCarModel: "Chevrolet 2014"),
    TaxiDriver(nameTaxiDriver: "Yuliana", taxiDriverCarModel: "Lamborgini Centenario"),
    TaxiDriver(nameTaxiDriver: "Diego", taxiDriverCarModel: "BMW VT4"),
]
    