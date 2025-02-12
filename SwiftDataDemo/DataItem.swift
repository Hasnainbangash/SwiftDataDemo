//
//  DataItem.swift
//  SwiftDataDemo
//
//  Created by Elexoft on 12/02/2025.
//

import Foundation
import SwiftData

@Model
class DataItem {
    
    var id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
}
