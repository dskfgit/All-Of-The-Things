//
//  TypeOfThing.swift
//  All Of The Things
//
//  Created by Des Fisher on 16/5/2025.
//
import SwiftData

@Model
class TypeOfThing {
    var name: String
    var desc: String

    init(name: String, desc: String) {
        self.name = name
        self.desc = desc
    }
}
