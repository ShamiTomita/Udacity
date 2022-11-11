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
