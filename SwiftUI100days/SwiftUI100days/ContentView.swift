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

    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0

        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }

    var body: some View {

//        WeSplit()

        TabView {
            WeSplit()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("split")
                }
            FlagView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Flag")
                }
        }
        .font(.headline)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
