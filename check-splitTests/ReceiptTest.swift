//
//  ReceiptTest.swift
//  check-splitTests
//
//  Created by Nicholas Kaffine on 12/15/18.
//  Copyright © 2018 Nicholas Kaffine. All rights reserved.
//

import XCTest
@testable import check_split

class ReceiptTest: XCTestCase {
    var sut: Receipt?
    
    override func setUp() {
        sut = Receipt()
    }
    
    func testAddItem()
    {
        let item = Item(name: "test item", price: 999)
        sut = sut?.add(item: item)
        XCTAssertEqual(sut?.items.count, 1)
        XCTAssertEqual(sut?.items.first, item)
    }
}
