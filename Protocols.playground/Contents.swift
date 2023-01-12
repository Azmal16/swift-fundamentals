//defining protocols
protocol Drivable {
    // blueprint of a property
    var numOfWheels: Int { get }
    
    // blueprint of a method
    func drive(destination: String)
}

protocol Flyable {
    func flyWithWings(destination: String)
}

// conform class to Drivable protocol
class Car: Drivable {
    var numOfWheels: Int = 4
    func drive(destination: String) {
        print("Driving with \(numOfWheels) wheels to \(destination)!")
    }
}

// creating instance of Car class
var bmw = Car()
bmw.drive(destination: "Home")


//conforming to multiple protocols
class Aircraft: Drivable, Flyable {
    var numOfWheels = 16
    
    func drive(destination: String) {
        print("Driving with \(numOfWheels) wheels to \(destination)!")
    }
    
    func flyWithWings(destination: String) {
        print("FLying with wings to \(destination)!")
    }
}

//creating instance of Airplane class
var airBusa350 = Aircraft()
airBusa350.drive(destination: "Runway")
airBusa350.flyWithWings(destination: "New York")

//protocol inheritance
//Bird ptotocol inherits Flyable protocol
protocol FlyingAnimal: Flyable {
    func hunt(prey: String)
}

//Bird class conforms to FlyingAnimal protocol
class Bird: FlyingAnimal {
    func hunt(prey: String) {
        print("Hunting \(prey)")
    }
    
    func flyWithWings(destination: String) {
        print("Flying with wings to \(destination)")
    }
}

//creating instance of bird class
var eagle = Bird()
eagle.hunt(prey: "Snake")
eagle.flyWithWings(destination: "Nest")

//extending protocols
extension Flyable {
    func flyingWithRotors(destination: String) {
        print("Flying with rotors to \(destination)")
    }
}

//using extended protocol
var apache = Aircraft()
apache.flyingWithRotors(destination: "Base Camp")
