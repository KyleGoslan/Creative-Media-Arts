import Foundation

/*
 As a final task lets bring together everything we've looked at to create 
 a simple shopping basket that we can add a few items to.
 
 Well create a 'Basket' class that will calculate the total price of everyhting in 
 it and an array of items. 
 
 You'll be able to add to the basket and empty it.
*/

//TODO: Create a few dummy items that we'll be able to add (these will just be price numbers).

let cake = 1.50
let doughnut = 1.20
let cupCake = 2.10


//TODO: Create your 'Basket' class.
class Basket {
  
  var total = 0.0
  var items = [Double]()
  
  func add(item: Double) {
    items.append(item)
    total += item
  }
  
  func empty() {
    total = 0
    items.removeAll()
  }
  
}


//TODO: Create an instance of your basket.

let myBasket = Basket()

//TODO: Add a few items.

myBasket.add(item: cake)
myBasket.add(item: doughnut)
myBasket.add(item: cupCake)

//TODO: Check the price.
myBasket.total

myBasket.empty()

myBasket.total






