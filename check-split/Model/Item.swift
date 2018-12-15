//
//  Item.swift
//  check-split
//
//  Created by Nicholas Kaffine on 11/25/18.
//  Copyright © 2018 Nicholas Kaffine. All rights reserved.
//

import Foundation

struct Item: Equatable
{
    let name: String
    let description: String?
    let price: Int
    private let id: Int
    
    init(name: String, description: String? = nil, price: Int)
    {
        self.name = name
        self.description = description
        self.price = price
        self.id = Item.getNextId()
    }
    
    private static var currentId: Int = 0
    
    private static func getNextId() -> Int
    {
        let id = self.currentId
        self.currentId = id + 1
        return id
    }
}
