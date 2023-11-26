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
//: ## Concurrency
//:
//: Use `async` to mark a function that runs asynchronously.
//:
func fetchUserID(from server: String) async -> Int {
    if server == "primary" {
        return 97
    }
    return 501
}
// << 🔵 Run Point
//: You mark a call to an asynchronous function by writing `await` in front of it.
//:
func fetchUsername(from server: String) async -> String {
    let userID = await fetchUserID(from: server)
    if userID == 501 {
        return "John Appleseed"
    }
    return "Guest"
}
// << 🔵 Run Point
//: Use `async let` to call an asynchronous function, letting it run in parallel with other asynchronous code. When you use the value it returns, write `await`.
//:
func connectUser(to server: String) async {
    async let userID = fetchUserID(from: server)
    async let username = fetchUsername(from: server)
    let greeting = await "Hello \(username), user ID \(userID)"
    print(greeting)
}
// << 🔵 Run Point
//: Use `Task` to call asynchronous functions from synchronous code, without waiting for them to return.
//:
Task {
    await connectUser(to: "primary")
}
// << 🔵 Run Point
//:
//: -------------------
//:
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
