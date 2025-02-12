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
                    HStack {
                        Text(item.name)
                        Spacer()
                        Button {
                            updateItem(item)
                        } label: {
                            Image(systemName: "arrow.triangle.2.circlepath")
                        }

                    }
                }
                .onDelete { indexes in
                    for index in indexes {
                        deleteItem(items[index])
                    }
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
    
    func deleteItem(_ item: DataItem) {
        context.delete(item)
    }
    
    func updateItem(_ item: DataItem) {
        // Edit the item data
        item.name = "Updated Test Item"
        // Save the context
        try? context.save()
    }
    
}

#Preview {
    ContentView()
        .modelContainer(for: DataItem.self)
}
