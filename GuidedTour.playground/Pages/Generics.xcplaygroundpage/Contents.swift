//: ## ![SwiftSimplified.com](swift-simplified-logo.png)
//:
//: ![Swift Simplified .com](ss-in-content-logo.png) [Swift Simplified .com](https://www.swiftsimplified.com)
//:
//: [Swift.org](https://www.swift.org) | [SwiftSimplified.com](https://www.swiftsimplified.com) | [Online Course](https://www.swiftsimplified.com/the-swift-handbook) | [Swift Language Guide](https://www.swiftsimplified.com/the-swift-language-guide)
//:
//: -------------------
//: ## The  Swift Guided Tour
//: This material is an uneditted duplicate of the offical Apple [Guided Tour Swift playground](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour), taken from the Swift.org website.
//:
//: v1 | Swift v5.9+ | Xcode 14+ | [Swift.org html Version](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour)
//:
//: -------------------
//: ## Generics
//:
//: Write a name inside angle brackets to make a generic function or type.
//:
func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result: [Item] = []
    for _ in 0..<numberOfTimes {
         result.append(item)
    }
    return result
}
makeArray(repeating: "knock", numberOfTimes: 4)

//: You can make generic forms of functions and methods, as well as classes, enumerations, and structures.
//:
// Reimplement the Swift standard library's optional type
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)

//: Use `where` right before the body to specify a list of requirements—for example, to require the type to implement a protocol, to require two types to be the same, or to require a class to have a particular superclass.
//:
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
    where T.Element: Equatable, T.Element == U.Element
{
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
   return false
}
anyCommonElements([1, 2, 3], [3])

//: - Experiment:
//: Modify the `anyCommonElements(_:_:)` function to make a function that returns an array of the elements that any two sequences have in common.
//:
//: Writing `<T: Equatable>` is the same as writing `<T> ... where T: Equatable`.
//:
//: -------------------
//: [Previous](@previous) | [Next](@next)
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
