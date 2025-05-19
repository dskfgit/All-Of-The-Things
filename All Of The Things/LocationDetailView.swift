//
//  LocationView.swift
//  All Of The Things
//
//  Created by Des Fisher on 17/5/2025.
//

import SwiftUI
import SwiftData

struct LocationDetailView: View {
    let location: Location
    var body: some View {
        VStack{
            Text("Name: " + String(location.name))
        }
    }
}

/*
 #Preview {
 LocationView(location: Location)
 }
 */
