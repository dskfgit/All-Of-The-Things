//
//  TypesOfThingsView.swift
//  All Of The Things
//
//  Created by Des Fisher on 16/5/2025.
//

import SwiftUI
import SwiftData

struct TypesOfThingsView: View {
    @Environment(\.modelContext) var modelContext
    @Query private var typesOfThings: [TypeOfThing]
    
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
                ForEach(typesOfThings) { typeOfThing in
                    NavigationLink {
                        TypeOfThingDetailView(typeOfThing: typeOfThing)                        
                    } label: {
                        Text(typeOfThing.name)
                    }
                }
                //.onDelete(perform: deleteItems)
            }
            .navigationSplitViewColumnWidth(min: 180, ideal: 200)
            .navigationDestination(for: TypeOfThing.self) { typeOfThing in
                TypeOfThingDetailView(typeOfThing: typeOfThing)
            }
            .toolbar {
                ToolbarItem {
                    Button(action: addTypesOfThings) {
                        Label("Add Types of Things", systemImage: "circle")
                    }
                }
                ToolbarItem {
                    Button(action: addTypeOfThing) {
                        Label("Add Types of Thing", systemImage: "plus")
                    }
                }
                ToolbarItem {
                    Button(action: deleteItems) {
                        Label("Delete All", systemImage: "trash")
                    }
                }
            }
        } detail: {
            Text("Select a type of thing...")
        }
    }

    private func addTypeOfThing() {
        withAnimation {
            /*
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
            */
        }
    }

    private func deleteItems() {
        withAnimation {
            for typeOfThing in typesOfThings {
                modelContext.delete(typeOfThing)
            }
        }
    }
    
    private func addTypesOfThings() {
        withAnimation {
            let type1 = TypeOfThing(name: "Spice", desc: "For use in cooking")
            let type2 = TypeOfThing(name: "Stock", desc: "For use in cooking")
            let type3 = TypeOfThing(name: "IT Equipment", desc: "Computers and related equipment")
            let type4 = TypeOfThing(name: "Motorcycle Gear", desc: "Gear used in Motorcycle riding, like helmets, jackets, boots")
            let type5 = TypeOfThing(name: "Kitchen equipment", desc: "Tools and equipment used in the kitchen like pots, pans, cookers, blenders, etc")
            
            modelContext.insert(type1)
            modelContext.insert(type2)
            modelContext.insert(type3)
            modelContext.insert(type4)
            modelContext.insert(type5)
            
        }
    }
    
}

/*
 #Preview {
 ContentView()
 .modelContainer(for: Item.self, inMemory: true)
 }
 */
