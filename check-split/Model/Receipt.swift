//
//  Receipt.swift
//  check-split
//
//  Created by Nicholas Kaffine on 11/25/18.
//  Copyright © 2018 Nicholas Kaffine. All rights reserved.
//

import Foundation

struct Receipt: Equatable
{
    let items: [Item]
    
    init()
    {
        items = []
    }
    
    private init(items: [Item])
    {
        self.items = items
    }
    
    func add(item: Item) -> Receipt
    {
        return Receipt(items: items + [item])
    }
}
