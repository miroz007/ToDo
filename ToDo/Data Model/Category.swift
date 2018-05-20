//
//  Category.swift
//  ToDo
//
//  Created by Amir on 5/19/18.
//  Copyright © 2018 Amir. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
