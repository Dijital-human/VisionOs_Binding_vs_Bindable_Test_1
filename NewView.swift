//
//  NewView.swift
//  Binding_vs_Bindable
//
//  Created by Famil Mustafayev on 23.08.24.
//

import SwiftUI

struct NewView: View {
    @Environment (\.dismiss) var dismiss

    @Bindable var count: Count
    var body: some View {
        VStack{
            Text("New View").font(.extraLargeTitle)
            
            Text("Count: ")
            +
            Text(count.count.description).font(.extraLargeTitle).foregroundStyle(.red)
            
            Button(action: {
                count.count += 1
            }, label: {
                Text("Add Count")
            })
            Button(action: {
                dismiss()
            }, label: {
                Text("Dismiss")
            })
        }
    }
}

#Preview {

    NewView(count: Count())
}
