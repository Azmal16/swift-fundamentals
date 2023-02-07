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
