//
//  VersionGreaterThanOperatorTests.swift
//  Version
//
//  Created by David Cordero on 05/10/14.
//  Copyright (c) 2014 David Cordero. All rights reserved.
//

import UIKit
import XCTest

class VersionGreaterOperatorTests: XCTestCase {

    func testGreaterThanWithTheSameNumberOfFigures() {
        let sut1 = Version("1.2.3")
        let sut2 = Version("1.2.2")
        
        XCTAssertTrue(sut1 > sut2, "Wrong comparison result for operator ==")
        XCTAssertTrue(sut1 >= sut2, "Wrong comparison result for operator ==")
    }
    
    func testGreaterThanWithDifferentNumberOfFigures() {
        let sut1 = Version("2.2.3")
        let sut2 = Version("1.1")
        
        XCTAssertTrue(sut1 > sut2, "Wrong comparison result for operator ==")
        XCTAssertTrue(sut1 >= sut2, "Wrong comparison result for operator ==")
    }

    func testGreaterThanOrEqualWithTheSameNumberOfFigures() {
        let sut1 = Version("1.2.3")
        let sut2 = Version("1.2.3")
        
        XCTAssertFalse(sut1 > sut2, "Wrong comparison result for operator ==")
        XCTAssertTrue(sut1 >= sut2, "Wrong comparison result for operator ==")
    }
    
    func testGreaterThanOrEqualWithDifferentNumberOfFigures() {
        let sut1 = Version("1.2.0")
        let sut2 = Version("1.2")
        
        XCTAssertFalse(sut1 > sut2, "Wrong comparison result for operator ==")
        XCTAssertTrue(sut1 >= sut2, "Wrong comparison result for operator ==")
    }
}
