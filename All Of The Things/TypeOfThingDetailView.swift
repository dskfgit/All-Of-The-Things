//
//  TypeOfThingDetailView.swift
//  All Of The Things
//
//  Created by Des Fisher on 17/5/2025.
//

import SwiftUI
import SwiftData

struct TypeOfThingDetailView: View {
    let typeOfThing: TypeOfThing
    var body: some View {
        Text("Name: " + String(typeOfThing.name))
    }
}

/*
 #Preview {
 LocationView(location: Location)
 }
 */
