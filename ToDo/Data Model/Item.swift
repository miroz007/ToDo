//
//  Item.swift
//  ToDo
//
//  Created by Amir on 5/19/18.
//  Copyright © 2018 Amir. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done:Bool = false
    @objc dynamic var dateCreated:Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
