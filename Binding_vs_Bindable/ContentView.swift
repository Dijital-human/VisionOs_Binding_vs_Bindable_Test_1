//
//  ContentView.swift
//  Binding_vs_Bindable
//
//  Created by Famil Mustafayev on 23.08.24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @StateObject var count = Count()
    @State private var open: Bool = false
    var body: some View {
        VStack {
            
            Text("Binding vs Bindable")
                .font(.extraLargeTitle)
                .monospaced()
            Text("Count: ").font(.largeTitle)
            +
            Text(count.count.description)
                .font(.extraLargeTitle)
                .foregroundStyle(.black)
            Button(action: {
                count.count += 1
                
            }, label: {
                Text("Add count")
            })
            Button(action: {
                open = true
            }, label: {
                Text("Open")
            })
            .sheet(isPresented: $open, content: {
                OpenView(count: count)
            })
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
