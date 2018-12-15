//
//  Person.swift
//  check-split
//
//  Created by Nicholas Kaffine on 11/25/18.
//  Copyright © 2018 Nicholas Kaffine. All rights reserved.
//

import Foundation

class Person: Equatable
{
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.firstName == rhs.firstName
            && lhs.lastName == rhs.lastName
            && lhs.id == rhs.id
            && lhs.items == rhs.items
    }
    
    let firstName: String
    let lastName: String
    private (set) var items: [Item]
    private let id: Int
    
    init(firstName: String, lastName: String)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.id = Person.getNextId()
        items = []
    }
    
    private static var currentId: Int = 0
    
    private static func getNextId() -> Int
    {
        let id = self.currentId
        self.currentId = id + 1
        return id
    }
    
    func add(item: Item)
    {
        items.append(item)
    }
}
