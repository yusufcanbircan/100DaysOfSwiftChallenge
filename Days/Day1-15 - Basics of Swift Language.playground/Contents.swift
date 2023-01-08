import UIKit

// MARK: - Keywords to remember
//     type safety: Swift won’t let us mix different types of data by accident. You cannot add an int to float!
//     Notice how we’re using + to join two strings, but when we used Int and Double it added numbers together? This is called "operator overloading".
//     string interpolation: lets us efficiently create strings from other strings, but also from integers, decimal numbers, and more.



// MARK: - Day 1 - variables, constants, strings, and numbers

//// with 'var' keyword, you can create new variables that can change

var greeting = "Hello World!"

var numberOfChange = 5
print(numberOfChange)

numberOfChange = 6
print(numberOfChange)

numberOfChange = 7
print(numberOfChange)


//// with 'let' keyword, you can create new constants that cannot change

let myName = "yusuf"

let languageName = "swift"
// languageName = "C"  -> you cannot change.


//// you can assign string to a variable or a constant with double qoute.

let actor = "Yusuf Can"

let fileName = "photos.jpg"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."
print(quote)

/*
let movie = "A day in
the life of an
Apple engineer" */ // you will get an error, wrong usage

let movie = """
A day in
the life of an
Apple engineer
""" // This is a multi-line string

print(movie.count)
print(movie.uppercased())
print(movie.lowercased())
print(movie.hasPrefix("A day"))
print(movie.hasSuffix("engineer"))


//// How to store whole numbers

var veryBig = 1000000
veryBig = 1_000_000
veryBig = 1___000_0_00 // these three assignments are true and veryBig will be 1.000.000 at each.
print(veryBig)

var counter = 5
counter += 5

print(counter)
print(counter.isMultiple(of: 3))

print(300.isMultiple(of: 3))


//// How to store floating numbers
var a = 5 + 4.0 // you can add an int to a float

var b = 5
var c = 4.0
// var d = b + c  ->  but you cannot add an int to a float like that
var d = Int(c) + b // that is the way how we add them


// MARK: - Day 2 - Booleans, string interpolation

//// how to store truth with booleans

let gameOver = false  // you can assign directly

let isMultiple = 300.isMultiple(of: 3) // you can assign the return value

var isAuthenticated = false

isAuthenticated = !isAuthenticated // you can toggle the boolean with !
print(isAuthenticated)

isAuthenticated.toggle() // or you can use toggle function
print(isAuthenticated)

//// How to join strings together

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

print("5 x 5 is \(5 * 5)")
