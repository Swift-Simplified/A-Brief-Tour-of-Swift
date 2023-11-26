//: ## ![SwiftSimplified.com](swift-simplified-logo.png)
//:
//: ![Swift Simplified .com](ss-in-content-logo.png) [Swift Simplified .com](https://www.swiftsimplified.com)
//:
//: [Swift.org](https://www.swift.org) | [SwiftSimplified.com](https://www.swiftsimplified.com) | [Learn Swift Online - All 13 Main Language Features](https://www.swiftsimplified.com/the-swift-handbook)
//:
//: -------------------
//: ## The  Swift Guided Tour
//: This Xcode playground was created by Apple  to introduce the Swift programming language. This online course was created as a companion guide to help discuss and introduce each topic. The online tour can be found on the [Swift.org](https://www.swift.org) website [here](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour).
//:
//: v1 | Swift v5.9+ | Xcode 14+ | [Swift.org html Version](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour)
//:
//: -------------------
//: ## A Swift Tour
//:
//: Tradition suggests that the first program in a new language should print the words “Hello, world!” on the screen. In Swift, this can be done in a single line:
//:
print("Hello, world!")
// << 🔵 Run Point
//:
//: If you have written code in C or Objective-C, this syntax looks familiar to you—in Swift, this line of code is a complete program. You don’t need to import a separate library for functionality like input/output or string handling. Code written at global scope is used as the entry point for the program, so you don’t need a `main()` function. You also don’t need to write semicolons at the end of every statement.
//:
//: This tour gives you enough information to start writing code in Swift by showing you how to accomplish a variety of programming tasks. Don’t worry if you don’t understand something—everything introduced in this tour is explained in detail in the rest of this book.
//:
//: -------------------
//:
//: ## Simple Values
//:
//: Use `let` to make a constant and `var` to make a variable. The value of a constant doesn’t need to be known at compile time, but you must assign it a value exactly once. This means you can use constants to name a value that you determine once but use in many places.
//:
var myVariable = 42
myVariable = 50
let myConstant = 42
// << 🔵 Run Point
//:
//: A constant or variable must have the same type as the value you want to assign to it. However, you don’t always have to write the type explicitly. Providing a value when you create a constant or variable lets the compiler infer its type. In the example above, the compiler infers that `myVariable` is an integer because its initial value is an integer.
//:
//: If the initial value doesn’t provide enough information (or if there isn’t an initial value), specify the type by writing it after the variable, separated by a colon.
//:
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
// << 🔵 Run Point
//:
//: - Experiment:
//: Create a constant with an explicit type of `Float` and a value of `4`.
//:
//: Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desired type.
//:
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
// << 🔵 Run Point
//:
//: - Experiment:
//: Try removing the conversion to `String` from the last line. What error do you get?
//:
//: There’s an even simpler way to include values in strings: Write the value in parentheses, and write a backslash (`\`) before the parentheses. For example:
//:
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
// << 🔵 Run Point
//:
//: - Experiment:
//: Use `\()` to include a floating-point calculation in a string and to include someone’s name in a greeting.
//:
//: Use three double quotation marks (`"""`) for strings that take up multiple lines. Indentation at the start of each quoted line is removed, as long as it matches the indentation of the closing quotation marks. For example:
//:
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
// << 🔵 Run Point
//:
//: Create arrays and dictionaries using brackets (`[]`), and access their elements by writing the index or key in brackets. A comma is allowed after the last element.
//:
var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
 ]
occupations["Jayne"] = "Public Relations"
// << 🔵 Run Point
//:
//: Arrays automatically grow as you add elements.
//:
shoppingList.append("blue paint")
print(shoppingList)
// << 🔵 Run Point
//:
//: To create an empty array or dictionary, use the initializer syntax.
//:
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]
// << 🔵 Run Point
//:
//: If type information can be inferred, you can write an empty array as `[]` and an empty dictionary as `[:]`—for example, when you set a new value for a variable or pass an argument to a function.
//:
shoppingList = []
occupations = [:]
// << 🔵 Run Point
//:
//: -------------------
//:
//: [Next](@next)
//:
//: -------------------
//:
//: ## ![SwiftSimplified.com](swift-simplified-logo.png)
//: [Website](https://www.swiftsimplified.com) | [The Swift Handbook](https://www.swiftsimplified.com/the-swift-handbook) | [The Swift Language Guide](https://www.swiftsimplified.com/the-swift-language-guide)
//:
//: 🛠 *..let's live a better life, by learning Swift*
//:
//: -------------------
//:
//: ### 🧕🏻🙋🏽‍♂️👨🏿‍💼👩🏼‍💼👩🏻‍💻💁🏼‍♀️👨🏼‍💼🙋🏻‍♂️🙋🏻‍♀️👩🏼‍💻🙋🏿💁🏽‍♂️🙋🏽‍♀️🙋🏿‍♀️🧕🏾🙋🏼‍♂️
//:
//: Welcome to our community of [SwiftSimplified.com](https://www.swiftsimplified.com) students!
