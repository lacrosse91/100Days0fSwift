//
//  ContentView.swift
//  SwiftUI100days
//
//  Created by 川内翔一朗 on 2019/10/27.
//  Copyright © 2019 川内翔一朗. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var tapCount = 0

    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
