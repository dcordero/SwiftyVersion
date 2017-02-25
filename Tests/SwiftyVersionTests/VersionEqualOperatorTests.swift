import XCTest
@testable import SwiftyVersion

class VersionEqualOperatorTests: XCTestCase {

	func testEqualWithTheSameNumberOfFigures() {
        let sut1 = Version("1.2.2")
        let sut2 = Version("1.2.2")
        
        XCTAssertTrue(sut1 == sut2, "Wrong comparison result for operator ==")
    }
    
    func testEqualWithDifferentNumberOfFigures() {
        let sut1 = Version("1.2.0")
        let sut2 = Version("1.2")
        
        XCTAssertTrue(sut1 == sut2, "Wrong comparison result for operator ==")
    }
    
    func testNotEqualWithTheSameNumberOfFigures() {
        let sut1 = Version("1.2.2")
        let sut2 = Version("1.2.0")
        
        XCTAssertTrue(sut1 != sut2, "Wrong comparison result for operator ==")
    }
    
    func testNotEqualWithDifferentNumberOfFigures() {
        let sut1 = Version("1.2.2")
        let sut2 = Version("1.2")
        
        XCTAssertTrue(sut1 != sut2, "Wrong comparison result for operator ==")
    }

    static var allTests: [(String, (VersionEqualOperatorTests) -> () throws -> Void)] {
        return [
            ("testEqualWithTheSameNumberOfFigures", testEqualWithTheSameNumberOfFigures),
            ("testEqualWithDifferentNumberOfFigures", testEqualWithDifferentNumberOfFigures),
            ("testNotEqualWithTheSameNumberOfFigures", testNotEqualWithTheSameNumberOfFigures),
            ("testNotEqualWithDifferentNumberOfFigures", testNotEqualWithDifferentNumberOfFigures),
        ]
    }
}
