import UIKit

var optionalString: String? = "Hello"

print(optionalString == nil)
//Prints False

var optionalName: String? = nil
var greeting = "Hello!"

if let name = optionalName{
    greeting = "Hello, \(name)"
} else {
    greeting = "Fine Then!"
}

print(greeting) //prints "fine then


let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"

print(informalGreeting) //"Hi John AppleSeed"

if let nickname {
    print("Hey, \(nickname)")
}

//

var vegetable = "red pepper"
vegetable = "celery"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
// Prints "Is it a spicy red pepper?”

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var varb = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
// Prints "25”

var n = 2
while n < 100 {
    n *= 2
}
print(n)
// Prints "128"

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)
// Prints "128”

//keeping an index in a loop byusing ..< to make a range of indexes
var total = 0
for i in 0..<4 {
    total += i
}
print(total)
// Prints "6”


// the -> seperates the arugments + their types from the return type
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")

//tuples???

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
// Prints "120"
print(statistics.2)
// Prints "120”


//functions can be nested
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

//functions can return another function as its value
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

//functions can take another function as one of its arguments
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

//Structures and Classes has many things in commmon
//both define properties to store values, provide functionality, subscripts, define initializers,
//Classes have more capabilities that structures
//Classes have inheritance, type of a class instace,

struct SomeStructure {
    //structure definition goes here
}

class SomeClass {
    //class definition goes here
}
//defining a new structure or class is like creating a new Swift type

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String? //maybe it doesnt have a name right now!
}

struct Dog {
    var name: String
    var breed: String
    var owner: String
}

var brayan = Dog(name: "Brayan", breed: "Mutt", owner: "Tomitas")
var kevyn = brayan
kevyn.name = "Kevyn"
kevyn.owner = "Ana & Sean"

brayan
kevyn


class Cat {
    var name: String?
    var breed: String?
    var owner: String?
    
    init(name: String, breed: String, owner: String){
        self.name = name
        self.breed = breed
        self.owner = owner
    }
}

var milo = Cat(name: "Milo", breed:"Black", owner:"Shami")
milo.name // = milo
var kunst = milo
kunst.name = "Kunst"
kunst
milo.name = "Demon"
milo
kunst


