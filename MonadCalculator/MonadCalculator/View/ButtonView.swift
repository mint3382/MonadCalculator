//
//  ButtonView.swift
//  MonadCalculator
//
//  Created by minsong kim on 7/6/24.
//

import SwiftUI

struct ButtonView: View {
    var number: Int
    @Binding var inputNumber: String
    @Binding var didTappedOperator: Bool
    @Binding var isLastOperator: Bool
    
    var body: some View {
        Button(action: {
            print(number)
            if isLastOperator {
                inputNumber = "\(number)"
                isLastOperator = false
            } else {
                inputNumber += "\(number)"
            }
            didTappedOperator = false
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
    ButtonView(number: 1, inputNumber: .constant(""), didTappedOperator: .constant(false), isLastOperator: .constant(true))
}
