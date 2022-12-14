///This playground demostrates the usage of property wrappers

//property wrapper
@propertyWrapper
struct FiftyOrLess {
    private var weight: Int
    init() {
        self.weight = 0
    }
    //Computed property
    var wrappedValue: Int {
        get {
            return weight
        }
        
        //maximum 50lbs will be set
        set {
            weight = min(newValue, 50)
        }
    }
}

struct Suitcase {
    //These are stored properties
    let color: String
    //Use the propery wrapper for this variable
    @FiftyOrLess var weight: Int
    
    init(color: String, weight: Int){
        self.color = color
        self.weight = weight
    }
}

struct Ticket {
    //Using property observer
    var passengerName = "" {
        //gets called before setting
        willSet {
            print("About to change the name of the passenger.")
        }
        //gets called after setting
        //oldValue is a keyword
        didSet {
            if passengerName != oldValue {
                print("Passenger name changed!")
            }
            else {
                print("Please enter a new name.")
            }
        }
    }
    
    var bag1: Suitcase
    var bag2: Suitcase
    
}
var smallBag = Suitcase(color: "Black", weight: 15)
var bigBag = Suitcase(color: "Red", weight: 35)

var ticketToLondon = Ticket(passengerName: "Azmal", bag1: smallBag, bag2: bigBag)
ticketToLondon.passengerName = "Nasif"
//It will not set the same name again
ticketToLondon.passengerName = "Nasif"

//Bag of more than 50 lbs wil not be accepted
//Weights more than 50 will be cut down to 50 due to the property wrapper
var extraLargeBag = Suitcase(color: "Purple", weight: 75)
print(extraLargeBag.weight)
