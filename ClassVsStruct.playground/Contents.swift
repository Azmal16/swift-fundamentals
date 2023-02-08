//This playground explains the difference between Swift Classes and Structures. This demonstration is inspired from a video by Sean Allen

class Car {
    var manufactureYear: Int
    var manufacturer: String
    var color: String
    
    init(manufactureYear: Int, manufacturer: String, color: String) {
        self.manufactureYear = manufactureYear
        self.manufacturer = manufacturer
        self.color = color
    }
}

//Create instance of the CarClass
var myCar = Car(manufactureYear: 2020, manufacturer: "BMW", color: "Red")

//Assign the value of myCar to a new variable
var stolenCar = myCar

//change a property of the stolenCar object
stolenCar.color = "White"

//Check the color of the stolen car
print("Color of the stolen car: \(stolenCar.color)")
//Prints: Color of the stolen car: White

//Look how it also changes the color of myCar
print("Color of my Car: \(myCar.color)")
//Prints: Color of my Car after getting stolen using class: White
//Both mycar and stolen car points to the same object

//Creating car Struct
struct Bike {
    var manufactureYear: Int
    var manufacturer: String
    var color: String
}

//Creating instances using same process
var myBike = Bike(manufactureYear: 2012, manufacturer: "Yamaha", color: "Blue")
var stolenBike = myBike

stolenBike.color = "Black"

print("Color of Stolen Bike: \(stolenBike.color)")
print("Color of My Bike: \(myBike.color)")
//These two bike variables are not pointing to the same object.

//Example of class inheritence...stucts can't inherit
class F1Car: Car {
    var team: String = ""
    var driver1: String = ""
    var driver2: String = ""
    
    init(manufactureYear: Int, manufacturer: String, color: String, team: String, driver1: String, driver2: String) {
        self.team = team
        self.driver1 = driver1
        self.driver2 = driver2
        super.init(manufactureYear: manufactureYear, manufacturer: manufacturer, color: color)
    }
}

var redBull = F1Car(manufactureYear: 2023, manufacturer: "RedBull", color: "Red and Blue", team: "RedBull", driver1: "Max", driver2: "Perez")
print("Driver 1 of RedBull: \(redBull.driver1)")
//Prints: Driver 1 of RedBull: Max
