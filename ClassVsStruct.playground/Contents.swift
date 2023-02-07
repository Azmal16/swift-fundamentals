//This playground explains the difference between Swift Classes and Structures. This demonstration is inspired from a video by Sean Allen

class CarClass {
    var manufactureYear: Int
    var manufacturer: String
    var color: String
    var numberOfDoors: Int
    
    init(manufactureYear: Int, manufacturer: String, color: String, numberOfDoors: Int) {
        self.manufactureYear = manufactureYear
        self.manufacturer = manufacturer
        self.color = color
        self.numberOfDoors = numberOfDoors
    }
}

//Create instance of the CarClass
var myCar = CarClass(manufactureYear: 2020, manufacturer: "BMW", color: "Red", numberOfDoors: 4)

//Assign the value of myCar to a new variable
var stolenCar = myCar

//change a property of the stolenCar object
stolenCar.color = "White"

//Check the color of the stolen car
print("Color of the stolen car: \(stolenCar.color)")

//Look how it also changes the color of myCar
print("Color of my Car after getting stolen using class: \(myCar.color)")
