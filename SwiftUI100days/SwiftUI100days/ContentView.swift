//
//  ContentView.swift
//  SwiftUI100days
//
//  Created by 川内翔一朗 on 2019/10/27.
//  Copyright © 2019 川内翔一朗. All rights reserved.
//

import SwiftUI

struct ContentView: View {
     @State private var name = ""

       var body: some View {
           Form {
            TextField("Enter your name", text: $name)
               Text("Your name is \(name)")
           }
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
