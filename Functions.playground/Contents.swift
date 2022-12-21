//Functions and return types
func myFuncOne(a:Int, b:Int = 10) -> Int{
    return a+b
}

print(myFuncOne(a: 15, b: 50))
print(myFuncOne(a: 15))

//Different styles of parameter names
func myFuncTwo(firstNum a:Int, sedondNum b:Int = 10) -> Int{
    //a and b are only accessible inside the function scope
    return a+b
}

print(myFuncTwo(firstNum: 100))

//Keeping parameter name only inside function
func myFuncThree(_ name: String) {
    print("The 2022 world cup winner is: \(name)")
}

myFuncThree("Messi!")
