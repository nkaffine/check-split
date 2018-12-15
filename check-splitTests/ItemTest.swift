//
//  ItemTest.swift
//  check-splitTests
//
//  Created by Nicholas Kaffine on 12/15/18.
//  Copyright © 2018 Nicholas Kaffine. All rights reserved.
//

import XCTest
@testable import check_split

class ItemTest: XCTestCase {
    var sut: Item?

    override func setUp() {
        sut = Item(name: "test item", description: "this is a test item", price: 1000)
    }

    func testItemEquality()
    {
        let item2 = Item(name: "test item", description: "this is a test item", price: 1000)
        XCTAssertEqual(sut, sut)
        XCTAssertNotEqual(sut, item2)
    }
}
