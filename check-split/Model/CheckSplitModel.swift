//
//  CheckSplit.swift
//  check-split
//
//  Created by Nicholas Kaffine on 11/25/18.
//  Copyright © 2018 Nicholas Kaffine. All rights reserved.
//

import Foundation

class CheckSplitModel
{
    private var receipt = Receipt()
    private (set) var people = [Person]()
    
    var unnasignedItems: [Item]
    {
        return self.receipt.items.filter {!assignedItems.contains($0)}
    }
    
    var assignedItems: [Item]
    {
        return self.getAllAssignedItems()
    }
    
    func add(item: Item)
    {
        self.receipt = self.receipt.add(item: item)
    }
    
    func add(person: Person)
    {
        self.people.append(person)
    }
    
    func assign(item: Item, to person: Person)
    {
        person.add(item: item)
    }
    
    private func getAllAssignedItems() -> [Item]
    {
        return people.map{ person in return person.items }.reduce([])
        {
            result, items in return result + items
        }
    }
}
