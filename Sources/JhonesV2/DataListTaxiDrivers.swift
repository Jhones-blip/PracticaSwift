class TaxiDriver{
    var nombre: String?
    var carro: String?
    var calificacion = 0.0
    var viajes = 0

    init(nombre: String, carro: String){
        self.nombre = nombre
        self.carro = carro
        
    }
}
    
var listTaxiDrivers = [
    TaxiDriver(nombre: "Jhon", carro: "Mazda 2018"),
    TaxiDriver(nombre: "Pedro", carro: "Chevrolet 1999"),
    TaxiDriver(nombre: "Juan", carro: "Audi UT5"),
    TaxiDriver(nombre: "Juliana", carro: "Ferrari Gallador"),
    TaxiDriver(nombre: "Mathias", carro: "Jeep 2012"),
    TaxiDriver(nombre: "Pablo", carro: "Gallardo 2695"),
    TaxiDriver(nombre: "Lina", carro: "Renoult 115") ,
    TaxiDriver(nombre: "Carlos", carro: "Chevrolet 2014"),
    TaxiDriver(nombre: "Yuliana", carro: "Lamborgini Centenario"),
    TaxiDriver(nombre: "Diego", carro: "BMW VT4"),
]
    