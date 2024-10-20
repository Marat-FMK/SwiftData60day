//
//  User.swift
//  SwiftData60day
//
//  Created by Marat Fakhrizhanov on 19.10.2024.
//


import SwiftUI


struct User: Codable, Identifiable {
    var id: String
    var isActive: Bool
    var name: String
    var age: Int
    var company: String
    var email: String
    var address: String
    var about: String
    var registered: String
    var tags: [String]
    var friends: [Friend]
 
}
