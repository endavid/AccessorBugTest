//
//  AccessorBugTestTests.swift
//  AccessorBugTestTests
//
//  Created by David Gavilan on 9/11/15.
//  Copyright (c) 2015 David Gavilan. All rights reserved.
//

import UIKit
import XCTest

class AccessorBugTestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testAttributeAccessor() {
        let abt = AccessorBugTest()
        let st0 = "(3, 3, 3, 3)"
        let st1 = "\(abt.todaysAttributes)"
        let st2 = "\(abt.attributes[abt.index])"
        let st3 = abt.initialText
        XCTAssertEqual(st0, st1, "These two should be equivalent!")
        XCTAssertEqual(st1, st2, "These two should be equivalent!")
        // This fails in Release only, but not in Debug
        XCTAssertEqual(st2, st3, "These two should be equivalent!")
    }
}
