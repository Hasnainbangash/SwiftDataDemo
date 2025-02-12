//
//  SwiftDataDemoApp.swift
//  SwiftDataDemo
//
//  Created by Elexoft on 12/02/2025.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: DataItem.self)
        }
    }
}
