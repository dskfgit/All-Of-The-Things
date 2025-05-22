//
//  AOTTContentView.swift
//  All Of The Things
//
//  Created by Des Fisher on 21/5/2025.
//
import SwiftUI
import SwiftData

struct AOTTContentView: View {
    @State private var listToShow: Int = 0
    @Environment(\.modelContext) var modelContext
    @Query private var locations: [Location]
    
    var body: some View {
        NavigationSplitView {
            VStack(spacing: 3) {
                NavigationLink("Locations", value: locations)
                .background(.blue)
                .navigationDestination(for: String.self) { val in
                    LocationsList()
                }
                //Divider()
                NavigationLink(value: "TypesOfThings") {
                    //listToShow = 2
                    Text("Types Of Things")
                        .padding()
                        .foregroundStyle(.white)
                        //.frame(height: 30)
                        //.background(.blue)
                        .frame(maxWidth: .infinity)
                }
                .background(.blue)
                NavigationLink(value: "Things") {
                    //listToShow = 3
                    Text("Things")
                        .padding()
                        .foregroundStyle(.white)
                        //.frame(height: 30)
                        //.background(.blue)
                        .frame(maxWidth: .infinity)
                }
                .background(.blue)
            }
            .navigationTitle("Sidebar")
        } content: {
            LocationsList()
        } detail: {
            Text("Make a selection...")
        }
    }
}

