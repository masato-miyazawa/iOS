//: # Closures

//: ### Closures include: 
//: __global functions, nested functions, and closure expressions__

//: ### What is a closure expression?
//: closure expression - __an unnamed, self contained block of code that can be passed as an argument to a function__

//: ### What are closure expressions used for?
//: Closure expressions are used to __specify an action to be executed some time in the future.__

//: ## Sorted

var bids = [48.1, 75.4, 63.7, 52.4, 68.2]
var orderedBids = bids.sorted(by: { (bid1: Double, bid2:Double) -> Bool in
    return  bid2 > bid1
})
print(orderedBids)

//: Closures typically take the form:
//:
//: { (parameters) -> return type **in**
//:
//:     statements to execute
//:
//:}

var birthYears = [2004, 2011, 2007, 2005, 2002]
var youngestToOldest = birthYears.sorted(by: { (year1: Int, year2: Int) -> Bool in
    return year1 > year2
})

print(youngestToOldest)

//: ### Quiz: Choose the correct type for this closure
var soup = ["tomato", "hot and sour", "french onion", "vegetable"]
var alphabeticalSoup = soup.sorted(by: { (soup1: String, soup2: String) -> Bool in
    return soup2 > soup1
})

alphabeticalSoup
//: ### Tricks to make your closures more concise: filter
var examGrades = [81, 99, 54, 84, 98]
var passingGrades = examGrades.filter({ $0 > 70 })
passingGrades




//: Inferring closure expression type
var grades = [81, 99, 54, 84, 98]
var failingGrades = examGrades.filter({grade in
    return grade < 70
})

failingGrades

//: Implicit returns
var moreGrades = [81, 99, 54, 84, 98]
var morePassingGrades = examGrades.filter({grade in
    grade > 70
})
morePassingGrades

//: Shorthand argument names: $0, $1, $2 ...
// Example 1
var myGrades = [81, 99, 54, 84, 98]
var myFailingGrades = examGrades.filter({
    $0 < 70
})
myFailingGrades

// Example 2
var soups = ["tomato", "hot and sour", "french onion", "vegetable"]
var alphabeticalSoups = soups.sorted(by: {(soup1: String, soup2: String) -> Bool in
    return soup2 > soup1
})


alphabeticalSoups

func makeIncrementer(forIncrement amount: Int) -> () -> (Int) {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()
incrementByTen()
print(incrementByTen())

let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()
incrementBySeven()
print(incrementBySeven())
let someOtherIncrementer = incrementBySeven
print(someOtherIncrementer())


//// Escaping Closures

var completionHandlers:[() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler: @escaping ()-> Void) {
    completionHandlers.append(completionHandler)
}
func someFunctionWithNonEscapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure() { self.x = 100 }
        someFunctionWithNonEscapingClosure() { x = 200}
    }
}

let instance = SomeClass()
instance.doSomething()

print(instance.x)

completionHandlers[0]()
print(instance.x)


var studentsInLine = ["Chris", "Alex", "Barry", "Matt", "Dan"]
print(studentsInLine.count)

let studentProvider = { studentsInLine.remove(at: 0) }

//studentProvider()

print(studentsInLine)

func register(_ studentProvider: ()->String) {
    print("Student \(studentProvider()) is registering.")
}

register(studentProvider)

func register2(_ studentProvider: @autoclosure ()->String) {
    print("Student \(studentProvider()) is registering.")
}

register2(studentsInLine.remove(at: 0))












