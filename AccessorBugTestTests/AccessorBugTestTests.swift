//
//  AccessorBugTestTests.swift
//  AccessorBugTestTests
//
//  Created by David Gavilan on 9/11/15.
//  Copyright © 2015 David Gavilan. All rights reserved.
//

import XCTest
@testable import AccessorBugTest

class AccessorBugTestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAttributeAccessor() {
        print("just making sure the test is running")
        let abt = AccessorBugTestClass()
        let st0 = "(3, 3, 3, 3)"
        let st1 = "\(abt.todaysAttributes)"
        let st2 = "\(abt.attributes[abt.index])"
        let st3 = abt.initialText
        XCTAssertEqual(st0, st1, "These two should be equivalent!")
        XCTAssertEqual(st1, st2, "These two should be equivalent!")
        // This fails in Release only, but not in Debug
        // note from matt: I'm not seeing failure here in Xcode 7 GM
        XCTAssertEqual(st2, st3, "These two should be equivalent!")
    }


}
