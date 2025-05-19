//
//  AOTTNavigationView.swift
//  All Of The Things
//
//  Created by Des Fisher on 18/5/2025.
//
import SwiftUI

struct AOTTNavigationView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 3) {
                NavigationLink(destination: LocationsView()) {
                    Text("Locations")
                        .padding()
                        .foregroundStyle(.white)
                        //.frame(height: 30)
                        //.background(.blue)
                        .frame(maxWidth: .infinity)
                }
                .background(.blue)
                //Divider()
                NavigationLink(destination: TypesOfThingsView()) {
                    Text("Types Of Things")
                        .padding()
                        .foregroundStyle(.white)
                        //.frame(height: 30)
                        //.background(.blue)
                        .frame(maxWidth: .infinity)
                }
                .background(.blue)
                NavigationLink(destination: ThingsView()) {
                    Text("Things")
                        .padding()
                        .foregroundStyle(.white)
                        //.frame(height: 30)
                        //.background(.blue)
                        .frame(maxWidth: .infinity)
                }
                .background(.blue)
            }
        }
    }

}
