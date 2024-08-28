//
//  OpenView.swift
//  Binding_vs_Bindable
//
//  Created by Famil Mustafayev on 23.08.24.
//

import SwiftUI

struct OpenView: View {
    @Environment (\.dismiss) var dismiss
    @State private var open: Bool = false

    @ObservedObject var count: Count
    var body: some View {
        VStack{
            Text("Open, View!").font(.extraLargeTitle)
            
            Text("Count : ") 
            +
            Text(count.count.description)
                .foregroundStyle(.red)
                .font(.extraLargeTitle)
            
            Button(action: {
                count.count += 1
            }, label: {
                Text("Add Count")
            })
            Button("Dismiss") {
                dismiss()
            }
            Button(action: {
                open = true
            }, label: {
                Text("New View")
            })
            .sheet(isPresented: $open, content: {
                NewView(count: count)
            })
        }.padding()
    }
}

#Preview (windowStyle:.automatic){
    OpenView(count: Count())
}
