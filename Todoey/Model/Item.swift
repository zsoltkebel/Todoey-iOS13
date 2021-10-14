//
//  Item.swift
//  Todoey
//
//  Created by Zsolt Kébel on 14/10/2021.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @Persisted var title: String = ""
    @Persisted var done: Bool = false
    @Persisted var dateCreated: Date?
    @Persisted(originProperty: "items") var parentCategory: LinkingObjects<Category> // Relation
    // Below is the outdated solution
//    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
