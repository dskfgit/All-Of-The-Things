//
//  ThingsView.swift
//  All Of The Things
//
//  Created by Des Fisher on 16/5/2025.
//

import SwiftUI
import SwiftData

struct ThingsView: View {
    @Environment(\.modelContext) var modelContext
    @Query private var things: [Thing]
    
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
                ForEach(things) { thing in
                    NavigationLink(thing.name) {
                        ThingDetailView(thing: thing)
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
            .navigationDestination(for: Thing.self) { thing in
                ThingDetailView(thing: thing)
            }
            .toolbar {
                ToolbarItem {
                    Button(action: addThing) {
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

    private func addThing() {
        withAnimation {
            /*
            let newThing1 = Thing(name: "Keens Curry Powder", desc: "Aussie curry powder for eggs and sausages, etc")
            let newThing2 = Thing(name: "Real Stock - Chicken", desc: "Long life chicken cooking stock")
            let newThing3 = Thing(name: "LG Gram laptop", desc: "15.6 thin LG laptop computer")
            let newThing4 = Thing(name: "Shoei NXR2", desc: "Balck Shoei NXR2 helmet")
            let newThing5 = Thing(name: "Sous Vide", desc: "Sous Vide electronic heating element with timer")
            /*
             * TODO: Need to find a way to select the type of thing.
             */
            modelContext.insert(newThing1)
            
            for typeOfThing in typesOfThings {
                if(typeOfThing.name == "Spice") {
                    newThing1.typeOfThing = typeOfThing
                }
                if(typeOfThing.name == "Stock") {
                    newThing2.typeOfThing = typeOfThing
                }
                if(typeOfThing.name == "IT Equipment") {
                    newThing3.typeOfThing = typeOfThing
                }
                if(typeOfThing.name == "Motorcycle Gear") {
                    newThing4.typeOfThing = typeOfThing
                }
                if(typeOfThing.name == "Kitchen equipment") {
                    newThing5.typeOfThing = typeOfThing
                }
            }
   
            
            for i in 0..<things.count {
                things[i].location = locations[i]
            }
             */
            
        }
    }

    private func deleteItems() {
        withAnimation {
            for thing in things {
                modelContext.delete(thing)
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
