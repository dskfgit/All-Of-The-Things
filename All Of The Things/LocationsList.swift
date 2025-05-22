//
//  LocationsList.swift
//  All Of The Things
//
//  Created by Des Fisher on 16/5/2025.
//

import SwiftData
import SwiftUI

struct LocationsList: View {
    @Environment(\.modelContext) var modelContext
    @Query private var locations: [Location]
    //@State private var path = NavigationPath()

    /*
    init() {
        _locations = Query(filter: #Predicate<Location> { location in
            location.children.count == 0
        }, sort: \Location.name)
    }
     */

    var body: some View {
        NavigationStack {
            List {
                ForEach(locations) { location in
                    NavigationLink(location.name) {
                    }
                    .navigationDestination(for: Location.self) { location in
                        LocationDetailView(location: location)
                    }
                }
                //.onDelete(perform: deleteItems)
            }
        }
    }
    
}

/*
 #Preview {
 ContentView()
 .modelContainer(for: Item.self, inMemory: true)
 }
 */
