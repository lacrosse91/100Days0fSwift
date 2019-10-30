//
//  FlagView.swift
//  SwiftUI100days
//
//  Created by 川内翔一朗 on 2019/10/28.
//  Copyright © 2019 川内翔一朗. All rights reserved.
//

import SwiftUI

struct FlagView: View {
    @State private var showingAlert = false

    var body: some View {
        Button("Show Alert") {
            self.showingAlert = true
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Hello SwiftUI!"), message: Text("This is some detail message"), dismissButton: .default(Text("OK")))
        }
    }
}

struct FlagView_Previews: PreviewProvider {
    static var previews: some View {
        FlagView()
    }
}
