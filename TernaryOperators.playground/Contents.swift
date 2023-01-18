// program to check pass or fail
let marks = 30

// use of ternary operator
let result = (marks >= 40) ? "pass" : "fail"

print("You " + result + " the exam")

// program to check if a number is positive, zero, or negative
let num = 7

let resultNum = (num == 0) ? "Zero" : ((num > 0) ? "Positive" : "Negative")

print("The number is \(resultNum).")

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
