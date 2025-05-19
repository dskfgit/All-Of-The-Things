//
//  ContentView.swift
//  All Of The Things
//
//  Created by Des Fisher on 16/5/2025.
//

import SwiftUI
import SwiftData

struct LocationsView: View {
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
        NavigationSplitView {
            List {
                ForEach(locations) { location in
                    NavigationLink(location.name) {
                        LocationDetailView(location: location)
                        /*
                         Text(location.name)
                         Text(location.desc)
                         HStack{
                         Text("Sublocations: ")
                         Text(String(location.children.count)).background(.blue).foregroundStyle(.white).clipShape(.capsule)
                         }
                         */
                        //Text(location.name)
                        //path.append(location)
                        
                    }
                    
                }
                //.onDelete(perform: deleteItems)
            }
            .navigationSplitViewColumnWidth(min: 180, ideal: 200)
            .navigationDestination(for: Location.self) { location in
                LocationDetailView(location: location)
            }
            .toolbar {
                ToolbarItem {
                    Button(action: addLocation) {
                        Label("Add Location", systemImage: "plus")
                    }
                }
                ToolbarItem {
                    Button(action: deleteItems) {
                        Label("Delete All", systemImage: "trash")
                    }
                }
            }

        } detail: {
            Text("Select a location")
        }
    }

    private func addLocation() {
        withAnimation {
            let newLocation = Location(name: "41a Kinmond Ave", desc: "Our home in Brisbane")

            let child1 = Location(name: "Kitchen", desc: "Our kitchen in Brisbane")
            let child2 = Location(name: "Gym", desc: "Our kitchen in Brisbane")
            let child3 = Location(name: "Shed", desc: "Our kitchen in Brisbane")
            let child4 = Location(name: "Laundry", desc: "Our downstairs laundry in Brisbane")
            let child5 = Location(name: "Des's Study", desc: "Des's upstairs study")
            let child6 = Location(name: "Chez's Study", desc: "Chez's upstairs study")
            
            modelContext.insert(newLocation)

            newLocation.children.append(child1)
            newLocation.children.append(child2)
            newLocation.children.append(child3)
            newLocation.children.append(child4)
            newLocation.children.append(child5)
            newLocation.children.append(child6)

        }
    }

    private func deleteItems() {
        withAnimation {
            for location in locations {
                modelContext.delete(location)
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
