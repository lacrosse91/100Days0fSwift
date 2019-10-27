//
//  ContentView.swift
//  SwiftUI100days
//
//  Created by 川内翔一朗 on 2019/10/27.
//  Copyright © 2019 川内翔一朗. All rights reserved.
//

import SwiftUI

struct ContentView: View {
     let students = ["Harry", "Hermione", "Ron"]
     @State private var selectedStudent = "Harry"

     var body: some View {
         Picker("Select your student", selection: $selectedStudent) {
             ForEach(0 ..< students.count) {
                 Text(self.students[$0])
             }
         }
     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
