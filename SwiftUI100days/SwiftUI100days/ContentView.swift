//
//  ContentView.swift
//  SwiftUI100days
//
//  Created by 川内翔一朗 on 2019/10/27.
//  Copyright © 2019 川内翔一朗. All rights reserved.
//

import SwiftUI

struct ContentView: View {
     @State private var checkAmount = ""
     @State private var numberOfPeople = 2
     @State private var tipPercentage = 2

    let tipPercentages = [10, 15, 20, 25, 0]

     var body: some View {
         Form {
             TextField("Amount", text: $checkAmount)
             .keyboardType(.decimalPad)

             Section {
                 Text("$\(checkAmount)")
             }
         }
     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
