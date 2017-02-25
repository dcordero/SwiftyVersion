import XCTest
@testable import SwiftyVersion

class VersionLowerOperatorTests: XCTestCase {

	func testLowerThanWithTheSameNumberOfFigures() {
        let sut1 = Version("1.2.2")
        let sut2 = Version("1.2.3")
        
        XCTAssertTrue(sut1 < sut2, "Wrong comparison result for operator ==")
        XCTAssertTrue(sut1 <= sut2, "Wrong comparison result for operator ==")
    }
    
    func testLowerThanWithDifferentNumberOfFigures() {
        let sut1 = Version("1.1")
        let sut2 = Version("2.2.3")
        
        XCTAssertTrue(sut1 < sut2, "Wrong comparison result for operator ==")
        XCTAssertTrue(sut1 <= sut2, "Wrong comparison result for operator ==")
    }
    
    func testLowerThanOrEqualWithTheSameNumberOfFigures() {
        let sut1 = Version("1.2.3")
        let sut2 = Version("1.2.3")
        
        XCTAssertFalse(sut1 < sut2, "Wrong comparison result for operator ==")
        XCTAssertTrue(sut1 <= sut2, "Wrong comparison result for operator ==")
    }
    
    func testLowerThanOrEqualWithDifferentNumberOfFigures() {
        let sut1 = Version("1.2")
        let sut2 = Version("1.2.0")
        
        XCTAssertFalse(sut1 < sut2, "Wrong comparison result for operator ==")
        XCTAssertTrue(sut1 <= sut2, "Wrong comparison result for operator ==")
    }

    static var allTests: [(String, (VersionLowerOperatorTests) -> () throws -> Void)] {
        return [
            ("testLowerThanWithTheSameNumberOfFigures", testLowerThanWithTheSameNumberOfFigures),
            ("testLowerThanWithDifferentNumberOfFigures", testLowerThanWithDifferentNumberOfFigures),
            ("testLowerThanOrEqualWithTheSameNumberOfFigures", testLowerThanOrEqualWithTheSameNumberOfFigures),
            ("testLowerThanOrEqualWithDifferentNumberOfFigures", testLowerThanOrEqualWithDifferentNumberOfFigures),
        ]
    }
}
