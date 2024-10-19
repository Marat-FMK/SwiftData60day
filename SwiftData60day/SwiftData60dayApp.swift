//
//  SwiftData60dayApp.swift
//  SwiftData60day
//
//  Created by Marat Fakhrizhanov on 19.10.2024.
//

import SwiftUI

@main
struct SwiftData60dayApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(User.self)
        .modelContainer(Friend.self)
    }
}
