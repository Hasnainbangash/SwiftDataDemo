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
    
    var body: some View {
        VStack {
            
            Text("Tap on this button to add data")
            Button("Add an item") {
                addItem()
            }
        }
        .padding()
    }
    
    func addItem() {
        
    }
    
}

#Preview {
    ContentView()
}
