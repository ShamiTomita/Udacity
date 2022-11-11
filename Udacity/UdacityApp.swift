//
//  UdacityApp.swift
//  Udacity
//
//  Created by Shami Tomita on 11/4/22.
//

import SwiftUI

@main
struct UdacityApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            var question = "Ready to write your first lines of Swift?"
            var response = "Heck yeah, I'm ready!"
            var salutation = "Hello, world!!!"

            // Example 1
            let encouragement = "You can do it!"
            var customizedEncouragement = "You can do it, Stephanie!"
            customizedEncouragement = "You can do it, Ryder!"

            // Example 2
            let birthYear = 2008
            var currentYear = 2016
            var age = currentYear - birthYear
            currentYear = 2017
            age = currentYear - birthYear
            var apples = "apples";
            var oranges = "oranges";
            let quotation = """
            I said "I have \(apples) apples."
            And then I said "I have \(apples + oranges) pieces of fruit."
            """
            
            
        }
    }
}
