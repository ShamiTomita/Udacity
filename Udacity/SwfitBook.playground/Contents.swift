import UIKit

var optionalString: String? = "Hello"

print(optionalString == nil)
//Prints False

var optionalName: String? = "John"
var greeting = "Hello!"

if let name = optionalName{
    greeting = "Hello, \(name)"
}

print(greeting)
