//
//  Friend.swift
//  SwiftData60day
//
//  Created by Marat Fakhrizhanov on 19.10.2024.
//

import SwiftData
import SwiftUI

@Model
class Friend {
    var id: String
    var name:  String
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}

