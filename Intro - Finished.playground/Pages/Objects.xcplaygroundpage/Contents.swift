import Foundation

/*
 - Classes bring everything that we've discussed so far together. 
 - Classes are blueprints for "objects". 
 - Objects have "properties". Their variables/constants. 
 - Objects have "methods". Their functions.
 - Notes:
*/

//TODO: Create a simple class that represents a person.

class Person {
  
  let name: String
  var age: Int
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
  
  func sayHello() {
    print("Hello World")
  }
  
}



/*
 - We create a person "instance" similar to how we created other variables.
 - We can then access it's properties and methods by using the name of instance and then a period.
 - Notes:
*/

//TODO: Create a simple class that represents a person.

let me = Person(name: "Kyle", age: 12)
me.name
me.age
me.sayHello()

let anotherPerosn = Person(name: "Jon", age: 45)



/*
 - If an objects property is delared with 'var' then you can change it.
 - Notes:
*/

//TODO: Change the age from 'let' to 'var' in the class.
//TODO: You can now change its value. 
me.age = 13
me.age



