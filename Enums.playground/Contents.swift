//This playground is about Swift Enumerators

// define enum
enum Season: CaseIterable {
  
  // define enum values
  case spring, summer, autumn, winter
}

// create enum variable
var currentSeason: Season

// assign value to enum variable
currentSeason = .summer

print("Current Season:", currentSeason)

// for loop to iterate over all cases
for currentSeason in Season.allCases {
  print(currentSeason)
}

//Enum with Raw Values
enum Size: Int {
    case small = 30
    case medium = 36
    case large = 42
}

let choice = Size.large.rawValue
print("The choice is \(choice)")
