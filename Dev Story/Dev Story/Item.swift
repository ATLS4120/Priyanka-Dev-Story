//
//  Item.swift
//  Dev Story
//
//  Created by Priyanka Balasubramaniyam on 9/16/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
