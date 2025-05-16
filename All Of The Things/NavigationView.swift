//
//  NavigationView.swift
//  All Of The Things
//
//  Created by Des Fisher on 18/5/2025.
//
import SwiftUI

struct NavigationView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack(alignment: .center) {
                Button {
                    path.append("LocationsView")
                } label: {
                    Text("Locations")
                        .padding()
                        .foregroundStyle(.white)
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                }

                Button {
                    path.append("TypesOfThingsView")
                } label: {
                    Text("Types of Things")
                        .padding()
                        .foregroundStyle(.white)
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                }
            }
            .navigationDestination(for: String.self) { destination in
                if destination == "LocationsView" {
                    LocationsView()
                } else {
                    TypesOfThingsView()
                }
            }
        }
    }
}
