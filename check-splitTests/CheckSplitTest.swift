//
//  CheckSplitTest.swift
//  check-splitTests
//
//  Created by Nicholas Kaffine on 12/15/18.
//  Copyright © 2018 Nicholas Kaffine. All rights reserved.
//

import XCTest
@testable import check_split

class CheckSplitTest: XCTestCase {
    var sut: CheckSplitModel?
    
    override func setUp() {
        sut = CheckSplitModel()
    }
    
    func testAddingItem()
    {
        let item = Item(name: "test item", price: 999)
        sut?.add(item: item)
        XCTAssertEqual(sut?.unnasignedItems.first, item)
        XCTAssertNil(sut?.assignedItems.first)
    }
    
    func testAddingPerson()
    {
        let person = Person(firstName: "Nick", lastName: "Kaffine")
        sut?.add(person: person)
        XCTAssertEqual(sut?.people.first, person)
    }
    
    func testAssigningItem()
    {
        let person = Person(firstName: "Nick", lastName: "Kaffine")
        let item = Item(name: "test item", price: 999)
        let item2 = Item(name: "another test item", price: 999)
        sut?.add(item: item)
        sut?.add(item: item2)
        sut?.add(person: person)
        
        XCTAssertNil(sut?.assignedItems.first)
        XCTAssertNotNil(sut?.unnasignedItems.first { return $0 == item })
        XCTAssertNotNil(sut?.unnasignedItems.first { return $0 == item2 })
        XCTAssertNotNil(sut?.people.first)
        
        sut?.assign(item: item, to: person)
        
        XCTAssertEqual(sut?.assignedItems.first, item)
        XCTAssertEqual(sut?.unnasignedItems.first, item2)
        
        sut?.assign(item: item, to: person)
        
        XCTAssertEqual(person.items.count, 1)
    }
}
