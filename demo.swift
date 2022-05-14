print("hello world")

// Type enforcement && variable assignment
var book: String = "Just Kids"
var pageCount: Int = 278
var tempf: Double = 83.0 // Floats
var truth: Bool = true
truth = false

// String interpolation
var age = 20
print("I am \(age) years old.")

// Constant assignment
let birthMonth = "January"

// C>F Temp calculation demo
var tempf: Double = 83.0
var tempc: Double = 0.0
tempc = (tempf - 32) / 1.8

print("The temp is \(tempc) degrees celsius")

// Arrays, type cannot be changed later; must only contain type specified

var listOfItems = [String]()
var listOfNums = [Int]()

// Literal Arrays

var subwayAdult: [Int] = [800, 1200, 1500]

// Access index 0 of array
print(subwayAdult[0]) 

// Length of array
print(subwayAdult.count)

// Append to an array, += add more than one at a time
resolutions = [String]("New", "Year", "Resoltions")
resolutions.append("Test")
resolutions += ["test", "demo"]

// Add or remove specific element in array via index
var dna = ["ATG", "ACG", "GAA", "TAT"]
dna.insert("GTG", at: 3)
dna.remove(at: 0)

// For loop
var receipt = [12.00, 3.75, 6.50, 19.99]
var total: Double = 0.0
for item in receipt{
  total += item
}

// If statement and for loop
var list = [2, 4, 3, 6, 1, 9]
var sumOfEven = 0
var sumOfOdd = 0

for num in list {
  if (num % 2 == 0){
    sumOfEven += num
  } else {
    sumOfOdd += num
  }
}

// Stride function, the range function from Python in Swift
for num in stride(from: 3, to: 0, by: -1) {
  print(num)
}

// Underscore use when not calling temp variable in loops
// Swift's compiler raises an error if we do not use the temp variable, underscore allows us to escape this
for _ in 1...15 {
  print("Buy eggs from the market")
}

// Continue, skipping values in loop
for num in 1...9 {
  if num % 2 == 1 {
    continue
  }
  print(num)
}

// Break loops
var guessedNum = Int.random(in: 1...15)
for counter in 1...15 {
  if counter == guessedNum {
    print("It's \(guessedNum)!!")
    break
  }
  print("Is it \(counter)?")
}

// While loops
var guess = Int.random(in: 1...10)
var magicNum = Int.random(in: 1...10)

while guess != magicNum {
  guess = Int.random(in: 1...10)
  magicNum = Int.random(in: 1...10)
  print("You guessed \(guess), and the number was \(magicNum)")
}

print("You're right it was \(guess)!")

// Sets, unique unordered arrays; array are not unique and are ordered
var emptySet = Set<Type>()
var vowels: Set = ["A", "E", "I", "O", "U"]

var swim: Set = ["Turtles", "Ducks", "Puffins", "Shark"]
var fly: Set = ["Humming birds", "Bats", "Ducks", "Puffins"]
var swimAndFly = fly.intersection(swim)
print(swimAndFly)

var consonants: Set = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
var vowels: Set = ["A", "E", "I", "O", "U"]
alphabet = vowels.union(consonants)
print(alphabet)

// Find values that exists in one set but not the other
var oscarWinners: Set = ["Heath Ledger", "Rita Moreno", "Audrey Hepburn", "John Legend"]
var emmyWinners: Set = ["Peter Dinklage", "John Legend", "Audrey Hepburn", "Rita Moreno"]
var difference = emmyWinners.symmetricDifference(oscarWinners)
print(difference)

// Any values shared by first and second array are removed from the first array, create new array
var foodEmojis: Set = ["🥕", "🍇", "🌶️", "🍒", "🍎", "🥦"]
var fruitEmojis: Set = ["🍇", "🍎", "🍒"]
var veggieEmojis = foodEmojis.subtracting(fruitEmojis)
print(veggieEmojis)


// Dictionaries/Objects, unordered lists

var emptyLiteral: [String: Int] = [:]
var emptyInitializer= [String: Bool]()

// Type Inference
var movieYears = ["Finding Nemo": 2003, "Toy Story": 1995]

// Adding to a pre-existing dictionary
var teaSteepingTemperature = [
  "Black": 212,
  "Oolong": 185,
  "White": 185
]

teaSteepingTemperature["Green"] = 185
teaSteepingTemperature["Rooibos"] = 212

// Editing a pre-existing dictionary

var abbreviations = [
  "LOL": "Laboring Over Latkes",
  "BRB": "Bringing Radishes Back",
]

abbreviations["LOL"] = "Laugh Out Loud"
abbreviations.updateValue("Be Right Back", forKey: "BRB")