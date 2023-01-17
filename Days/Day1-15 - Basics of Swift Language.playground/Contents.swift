import UIKit
import Foundation

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


// MARK: - Day 3 – Arrays, dictionaries, sets, and enums


//// how to store and find data in array

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperatures[2])

beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")

let firstBeatle = beatles[0]
let firstNumber = numbers[0]
// let notAllowed = firstBeatle + firstNumber // you cannot apply summation on different kinds


var scores = Array<Int>() // an empty array
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

var albums = [String]() // also empty array
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)


//// How to store and find data in dictionary

let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee2["name"])
print(employee2["job"])
print(employee2["location"]) // it will warn you

print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

//// How to use sets for fast data lookup

var peoplee = Set<String>()
peoplee.insert("Denzel Washington")
peoplee.insert("Tom Cruise")
peoplee.insert("Nicolas Cage")
peoplee.insert("Samuel L Jackson")

var aa = Set([1,2,3,3]) // this is a set with 3 elements

//// How to create and use enums


enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.friday
day = Weekday.monday

enum Weekend {
    case saturday, sunday
}

var weekendDay = Weekend.saturday
weekendDay = Weekend.sunday



// MARK: - Day 4 – type annotations

//// How to use type annotations

let luckyNumber: Int = 23

let pi: Double = 3.14

let isAuth: Bool = true

let albumss: [String] = ["yusuf", "can"]

let ids: [String: String] = ["id": "yusuf"]

var books: Set<String> = Set(["yusuf","can", "can"])

var teams: [String] = [String]() // Empty array



var clues = [String]() // type inference

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark
print(style)



//This time the challenge is to create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

var arr: [String] = ["yusuf", "ali", "veli", "cansu", "fadime", "mehmet", "osman", "osman", "enes", "yusuf", "cansu", "ali"]
print("The number of items in array: \(arr.count).")

var arrSet = Set(arr)
print("The number of unique items: \(arrSet.count)")


// MARK: - Day 5 – if, switch, and the ternary operator

//// How to check a condition is true or false

let namee = "Taylor Swift"

if namee != "Anonymous" {
    print("Welcome, \(namee)")
}

// Create the username variable
var username = "taylorswift13"

// If `username` contains an empty string
if username == "" {
    // Make it equal to "Anonymous"
    username = "Anonymous"
}

// Now print a welcome message
print("Welcome, \(username)!")

if username.count == 0 {
    username = "Anonymous"
}

if username.isEmpty {
    username = "Anonymous"
}

//// How to check multiple conditions

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

var actualWage: Int = 22_000
var medianWage: Double = 22_000   // -> you cannot compare int and double
/*if actualWage >= medianWage {
    print("Success")
}*/

//// How to use switch statements to check multiple conditions

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

let dayyy = 5
print("My true love gave to me…")

switch dayyy {
case 5:
    print("5 golden rings")
case 4:
    print("4 calling birds")
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
default:
    print("A partridge in a pear tree")
}

let dayy = 5
print("My true love gave to me…")

switch dayy {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

//// How to use the ternary conditional operator for quick tests

let agem = 18
let canVote = agem >= 18 ? "Yes" : "No"

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)


// MARK: - Day 6 – loops, summary

//// How to use a for loop to repeat work

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}


for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

//// How to use a while loop to repeat work

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")


//// How to skip loop items with break and continue

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)


// MARK: - Day 7 – functions, parameters, and return values

//// How to reuse code with functions

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

//// How to return values from functions

let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let cc = pythagoras(a: 3, b: 4)
print(cc)

func pythagorass(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}


//// How to return multiple values from functions

func getUserrrrr() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUserrrrr()
print("Name: \(user[0]) \(user[1])")

func getUser() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let users = getUser()
print("Name: \(users["firstName", default: "Anonymous"]) \(users["lastName", default: "Anonymous"])")

func getUserr() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}


func getUserrrr() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let userrrr = getUserrrr()
let firstName = userrrr.firstName
let lastName = userrrr.lastName

print("Name: \(firstName) \(lastName)")


// MARK: - Day 8 – default values, throwing functions

//// How to provide default values for parameters

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

//// How to handle errors in functions

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}


// MARK: - Day 9 – closures, passing functions into functions

//// How to create and use closures

let sayHello = {
    print("Hi there!")
}

sayHello()

let sayHelloo = { (name: String) -> String in
    "Hi \(name)!"
}

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let userr = data(1989)
print(userr)


func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let captainFirstTeammmm = team.sorted(by: captainFirstSorted)
print(captainFirstTeammmm)


//// How to use trailing closures and shorthand syntax

let teamm = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let captainFirstTeam = teamm.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

print(captainFirstTeam)

let captainFirstTeamm = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}

let reverseTeam = team.sorted { $0 > $1 }

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)


// MARK: - Day 10 – structs, computed properties, and property observers

//// How to create your own structs

struct Album { // simple struct
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

//// How to compute property values dynamically

/* struct Employee {
    let name: String
    var vacationRemaining: Int
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.vacationRemaining -= 5
print(archer.vacationRemaining)
archer.vacationRemaining -= 3
print(archer.vacationRemaining)

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}

var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
print(archer.vacationRemaining)
archer.vacationTaken += 4
print(archer.vacationRemaining)

var vacationRemaining: Int {
    get {
        vacationAllocated - vacationTaken
    }

    set {
        vacationAllocated = vacationTaken + newValue
    }
}

var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated) */

//// How to take action when a property changes

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1


struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")


//// How to create custom initializers

struct Player {
    let name: String
    let number: Int

    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}


// MARK: - Day 11 – access control, static properties and methods

//// How to limit access to internal data using access control

struct BankAccount {
    var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

account.funds -= 1000 // we can change it directly, if we define funds as private, it is better.


//// Static properties and methods


struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

struct Employeee {
    let username: String
    let password: String

    static let example = Employeee(username: "cfederighi", password: "hairforceone")
}

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

