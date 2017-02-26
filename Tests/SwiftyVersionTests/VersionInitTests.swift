import XCTest
@testable import SwiftyVersion

class VersionInitTests: XCTestCase {

	func testInitWithString() {
        let sut = Version("1.2.3.4.5")
        XCTAssertEqual(sut.components.count, 5, "Incorrect number of elements in version object")
        
        XCTAssertEqual(sut.components[0], "1", "Wrong component in position 1")
        XCTAssertEqual(sut.components[1], "2", "Wrong component in position 2")
        XCTAssertEqual(sut.components[2], "3", "Wrong component in position 3")
        XCTAssertEqual(sut.components[3], "4", "Wrong component in position 4")
        XCTAssertEqual(sut.components[4], "5", "Wrong component in position 5")
    }

	func testInitWithSpecificSeparator() {
        let sut = Version("1-2-3-4-5", usingSeparator:"-")
        XCTAssertEqual(sut.components.count, 5, "Incorrect number of elements in version object")
        
        XCTAssertEqual(sut.components[0], "1", "Wrong component in position 1")
        XCTAssertEqual(sut.components[1], "2", "Wrong component in position 2")
        XCTAssertEqual(sut.components[2], "3", "Wrong component in position 3")
        XCTAssertEqual(sut.components[3], "4", "Wrong component in position 4")
        XCTAssertEqual(sut.components[4], "5", "Wrong component in position 5")
    }

}
