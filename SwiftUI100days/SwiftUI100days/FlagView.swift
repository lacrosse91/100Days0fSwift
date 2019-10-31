//
//  FlagView.swift
//  SwiftUI100days
//
//  Created by 川内翔一朗 on 2019/10/28.
//  Copyright © 2019 川内翔一朗. All rights reserved.
//

import SwiftUI

struct FlagView: View {

    var teachers = ["緒方", "大保", "五嶋"]

    var subjects = ["生化学", "組織学", "薬理学"]

    var correctAnswer = Int.random(in: 0...2)

    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)

            VStack(spacing: 30) {
                VStack {
                    Text("Tap the subjects of")
                    Text(teachers[correctAnswer])
                }

                ForEach(0 ..< 3) { number in
                    Button(action: {
                       // flag was tapped
                    }) {
                        Text(self.subjects[number])
                            .foregroundColor(.white)
                    }
                }
            }
        }


    }
}

struct FlagView_Previews: PreviewProvider {
    static var previews: some View {
        FlagView()
    }
}
