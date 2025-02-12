//
//  ContentView.swift
//  SwiftDataDemo
//
//  Created by Elexoft on 12/02/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var context
    
    @Query private var items: [DataItem]
    
    var body: some View {
        VStack {
            
            Text("Tap on this button to add data")
            Button("Add an item") {
                addItem()
            }
            
            List {
                ForEach (items) { item in
                    Text(item.name)
                }
            }
            
        }
        .padding()
    }
    
    func addItem() {
        // Create the item
        let item = DataItem(name: "Test Item")
        // Add the item to the data context
        context.insert(item)
    }
    
}

#Preview {
    ContentView()
}
