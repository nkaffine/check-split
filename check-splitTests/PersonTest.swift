//
//  PersonTest.swift
//  check-splitTests
//
//  Created by Nicholas Kaffine on 12/15/18.
//  Copyright © 2018 Nicholas Kaffine. All rights reserved.
//

import XCTest
@testable import check_split

class PersonTest: XCTestCase {
    var sut: Person?

    override func setUp() {
        sut = Person(firstName: "Nick", lastName: "Kaffine")
    }

    func testPersonEquality()
    {
        let person2 = Person(firstName: "Nick", lastName: "Kaffine")
        XCTAssertEqual(sut, sut)
        XCTAssertNotEqual(sut, person2)
    }
    
    func testAddingItems()
    {
        let item = Item(name: "Test item", price: 999)
        sut?.add(item: item)
        XCTAssertEqual(sut?.items.count, 1)
        XCTAssertEqual(sut?.items.first, item)
    }
}
