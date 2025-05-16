//
//  Thing.swift
//  All Of The Things
//
//  Created by Des Fisher on 16/5/2025.
//
import SwiftData
import Foundation

@Model
class Thing {
    var name: String
    var desc: String
    var location: Location?
    var value: Decimal

    init(name: String, desc: String, location: Location? = nil, value: Decimal = NSNumber(floatLiteral: 0).decimalValue) {
        self.name = name
        self.desc = desc
        self.location = location
        self.value = value
    }
}
