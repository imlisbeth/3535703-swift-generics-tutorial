import Cocoa

func addInts(x: Int, y: Int) -> Int {
    return x + y
}

let intSum = addInts(x: 1, y: 2)

func addDoubles(x: Double, y: Double) -> Double {
    return x + y
}

let doubleSum = addDoubles(x: 1.0, y: 2.0)

// MARK: Arrays

let numbers = [1, 2, 3]

let firstNumber = numbers[0]

var numbersAgain: Array<Int> = []
numbersAgain.append(1)
numbersAgain.append(2)
numbersAgain.append(3)

let firstNumberAgain = numbersAgain[0]

// MARK: Dictionaries

let countryCodes = ["Arendelle": "AR", "Genovia": "GN", "Freedonia": "FD"]
let countryCode = countryCodes["Freedonia"]

// MARK: Optionals

let optionalName = Optional<String>.some("Princess Moana")
if let name = optionalName {}

// MARK: Results

enum MagicError: Error {
  case spellFailure
}

func cast(_ spell: String) -> Result<String, MagicError> {
    switch spell {
        case "flowers":
            return .success("💐")
        case "stars":
            return .success("✨")
        default:
            return .failure(.spellFailure)
    }
}

let result1 = cast("flowers") // .success("💐")
let result2 = cast("avada kedavra") // .failure(.spellFailure)

// MARK: Generic Data Structures

struct Queue<Element> {
    private var elements: [Element] = []
    
    mutating func enqueue(newElement: Element) {
        elements.append(newElement)
    }

    mutating func dequeue() -> Element? {
        guard !elements.isEmpty else { return nil }
        return elements.remove(at: 0)
    }
}

var q = Queue<Int>()

q.enqueue(newElement: 4)
q.enqueue(newElement: 2)

q.dequeue()
q.dequeue()
q.dequeue()
q.dequeue()

// MARK: Generic Functions

func pairs<Key, Value>(from dictionary: [Key: Value]) -> [(Key, Value)] {
  return Array(dictionary)
}

let somePairs = pairs(from: ["minimum": 199, "maximum": 299])
// result is [("maximum", 299), ("minimum", 199)]

let morePairs = pairs(from: [1: "Swift", 2: "Generics", 3: "Rule"])
// result is [(1, "Swift"), (2, "Generics"), (3, "Rule")]

// MARK: Generic Functions
