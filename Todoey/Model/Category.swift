//
//  Category.swift
//  Todoey
//
//  Created by Zsolt Kébel on 14/10/2021.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @Persisted var name: String = ""
    @Persisted var color: String = "" // Hex color string
    @Persisted var items: List<Item> // Relation
    // Outdated way:
//    let items = List<Item>()
}
