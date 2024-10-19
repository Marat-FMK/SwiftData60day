//
//  User.swift
//  SwiftData60day
//
//  Created by Marat Fakhrizhanov on 19.10.2024.
//

import SwiftData
import SwiftUI

@Model
class User {
    var id: String
    var isActive: String
    var name: String
    var age: Int
    var company: String
    var email: String
    var adress: String
    var about: String
    var registered: String
    var tags: String
    
    init(id: String, isActive: String, name: String, age: Int, company: String, email: String, adress: String, about: String, registered: String, tags: String) {
        self.id = id
        self.isActive = isActive
        self.name = name
        self.age = age
        self.company = company
        self.email = email
        self.adress = adress
        self.about = about
        self.registered = registered
        self.tags = tags
    }
    // Friend ?
}
