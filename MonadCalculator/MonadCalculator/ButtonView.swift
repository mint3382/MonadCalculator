//
//  ButtonView.swift
//  MonadCalculator
//
//  Created by minsong kim on 7/6/24.
//

import SwiftUI

struct ButtonView: View {
    var number: Int
    
    var body: some View {
        Button(action: {
            print(number)
        }) {
            Text(number.codingKey.stringValue)
                .padding(0.0)
                .frame(width: 80, height: 80)
                .font(.largeTitle)
                .foregroundStyle(.white)
                .background(Color.purple)
                .clipShape(Circle())
        }
    }
}

#Preview {
    ButtonView(number: 1)
}
