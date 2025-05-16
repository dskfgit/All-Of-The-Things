//
//  All_Of_The_ThingsApp.swift
//  All Of The Things
//
//  Created by Des Fisher on 16/5/2025.
//

import SwiftUI
import SwiftData

@main
struct All_Of_The_ThingsApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Location.self,
            TypeOfThing.self,
            Thing.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            NavigationView()
        }
        .modelContainer(sharedModelContainer)
    }
}
