//This playground is about Swift Switch statements and it's usage

// program to find the day of the week

let dayOfWeek = 4

switch dayOfWeek {
  case 1:
    print("Sunday")
        
  case 2:
    print("Monday")
        
  case 3:
    print("Tuesday")
        
  case 4:
    print("Wednesday")
        
  case 5:
    print("Thursday")
        
  case 6:
    print("Friday")
        
  case 7:
    print("Saturday")
        
  default:
    print("Invalid day")
}

//Switch Statement with Range

let ageGroup = 33

switch ageGroup {
  case 0...16:
    print("Child")

  case 17...30:
    print("Young Adults")

  case 31...45:
    print("Middle-aged Adults")

  default:
    print("Old-aged Adults")
}

//Switch Statement with Tuple

let info = ("Dwight", 38)

// match complete tuple values
switch info {
  case ("Dwight", 38):
    print("Dwight is 38 years old")

  case ("Micheal", 46):
    print("Micheal is 46 years old")

  default:
    print("Not known")
}
