//
//  Count.swift
//  Binding_vs_Bindable
//
//  Created by Famil Mustafayev on 23.08.24.
//

import Foundation
import SwiftData


@Observable//Bindable isdifade ucun
class Count: ObservableObject{//StateObject, ObservedObject
     var count: Int = 0
    
    
}
