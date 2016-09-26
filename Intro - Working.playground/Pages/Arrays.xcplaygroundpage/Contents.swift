import Foundation

/*
 - Arrays are one of two "collection" types in Swift.
 - The contents of the array should be of the same type.
 - Notes:
*/

//TODO: Create an array of numbers and and array of strings.
var numbers = [1, 2, 4, 6]
var colors = ["red", "green", "blue"]


/*
 - Often you might want to create an empty array, and add to it later.
 - This is done by specifying the type of object the array with contain.
 - Notes:
*/

//TODO: Create an empty array of strings.
var names = [String]()

//TODO: Add some values to the array.
names.append("Kyle")
names.append("Sam")
names.append("Lucy")
names.append("Sara")


/*
 - There are several ways to get data out of an array.
 - Arrays are zero indexed (the first value is at position 0).
 - Notes:
*/

//TODO: Get an item out of the array.
names[2]
//TODO: Get the first item.
names.first
//TODO: Get the last item.
names.last


/*
 - One of the most common things to do with a collection is to loop through it. 
 - This is done with a for loop.
 - It repeats an action for every item in your collection.
 - Notes:
*/

//TODO: Loop through the array and print out each item.
for name in names {
  print(name)
}



/*
 - Some other common things you might do with arrays.
 - Notes:
*/

//TODO: Count how many itmes are in the array.
names.count
//TODO: See if the array is empty.
names.isEmpty
//TODO: Remove all the items from the array.
names.removeAll()














