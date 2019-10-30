//
//  FlagView.swift
//  SwiftUI100days
//
//  Created by 川内翔一朗 on 2019/10/28.
//  Copyright © 2019 川内翔一朗. All rights reserved.
//

import SwiftUI

struct FlagView: View {
    var body: some View {
        Button(action: {
            print("Edit button was tapped")
        }) {
            HStack(spacing: 10) {
                Image(systemName: "pencil")
                Text("Edit")
            }
        }
    }
}

struct FlagView_Previews: PreviewProvider {
    static var previews: some View {
        FlagView()
    }
}
