//
//  ThingDetailView.swift
//  All Of The Things
//
//  Created by Des Fisher on 17/5/2025.
//

import SwiftUI
import SwiftData

struct ThingDetailView: View {
    let thing: Thing
    var body: some View {
        VStack(spacing: 3) {
            Text("Name: " + String(thing.name))
            Text("Name: " + String(thing.desc))
            if let tot = thing.typeOfThing {
                Text("Type: " + String(tot.name))
            }
            if let loc = thing.location {
                Text("Location: " + String(loc.name))
            }
        }
    }
}

/*
 #Preview {
 LocationView(location: Location)
 }
 */
