//
//  Location.swift
//  All Of The Things
//
//  Created by Des Fisher on 16/5/2025.
//
import SwiftData

@Model
class Location {
    var name: String
    var desc: String
    var children = [Location]()

    init(name: String, desc: String) {
        self.name = name
        self.desc = desc
    }
}
