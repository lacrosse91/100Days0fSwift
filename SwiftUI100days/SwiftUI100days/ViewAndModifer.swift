//
//  ViewAndModifer.swift
//  SwiftUI100days
//
//  Created by 川内翔一朗 on 2019/11/01.
//  Copyright © 2019 川内翔一朗. All rights reserved.
//

import SwiftUI

struct ViewAndModifer: View {
    @State var agreedToTerms = false
    @State var agreedToPrivacyPolicy = false
    @State var agreedToEmails = false

    var body: some View {
        let agreedToAll = Binding<Bool>(
            get: {
                self.agreedToTerms && self.agreedToPrivacyPolicy && self.agreedToEmails
            },
            set: {
                self.agreedToTerms = $0
                self.agreedToPrivacyPolicy = $0
                self.agreedToEmails = $0
            }
        )

        return VStack {
            Toggle(isOn: $agreedToTerms) {
                Text("Agree to terms")
            }

            Toggle(isOn: $agreedToPrivacyPolicy) {
                Text("Agree to privacy policy")
            }

            Toggle(isOn: $agreedToEmails) {
                Text("Agree to receive shipping emails")
            }

            Toggle(isOn: agreedToAll) {
                Text("Agree to all")
            }
        }
    }


}

struct ViewAndModifer_Previews: PreviewProvider {
    static var previews: some View {
        ViewAndModifer()
    }
}

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
}

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content

    var body: some View {
        VStack {
            ForEach(0 ..< rows) { row in
                HStack {
                    ForEach(0 ..< self.columns) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }

    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}
