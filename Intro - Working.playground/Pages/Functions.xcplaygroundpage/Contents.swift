import Foundation

/*
 - Functions let us group together code that can be reused.
 - We then "call" that function when we want to do that action rather than write the code again.
 - Functions can range from a few lines to hundreds (although that might be considered bad).
 - Notes:
*/

//TODO: Create a simple function.
func sayHello() {
  print("Hello World")
}

//TODO: Call the function.
sayHello()
sayHello()
sayHello()



/*
 - Functions can accept "parameters" or "arguments" to alter their behaviour.
 - You specify a name for the parameter and the type. 
 - This can then be used within the function.
 - Notes:
*/

//TODO: Create a function with a parameter.
func sayName(name: String) {
  print(name)
}

//TODO: Call the function passing in a value.
sayName(name: "Kyle")
sayName(name: "Jon")


/*
 - Functions can also return a value.
 - Notes:
*/

//TODO: Create a function that takes two numbers as parameters and returns the added value. 

func addNumbers(x: Int, y: Int) -> Int {
  return x + y
}

addNumbers(x: 10, y: 103)


