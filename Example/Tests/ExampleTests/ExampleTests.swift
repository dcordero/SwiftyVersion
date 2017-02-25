import XCTest
@testable import Example

class ExampleTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Example().text, "Hello, World!")
    }


    static var allTests : [(String, (ExampleTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
