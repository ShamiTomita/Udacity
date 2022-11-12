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

