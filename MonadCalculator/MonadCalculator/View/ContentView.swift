//
//  ContentView.swift
//  MonadCalculator
//
//  Created by minsong kim on 7/6/24.
//

import SwiftUI

struct ContentView: View {
    @State var inputNumber: String = ""
    @State var computedNumber: Int = 0
    @State var beforeOperator: Operator? = nil
    @State var didTappedOperator: Bool = true
    @State var isLastOperator: Bool = false
    
    var body: some View {
        BoardView(formula: $inputNumber)
        VStack {
            HStack {
                OperatorView(
                    operatorCase: .plus,
                    inputNumber: $inputNumber,
                    computedNumber: $computedNumber,
                    beforeOperator: $beforeOperator,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
                OperatorView(
                    operatorCase: .minus,
                    inputNumber: $inputNumber,
                    computedNumber: $computedNumber,
                    beforeOperator: $beforeOperator,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
                OperatorView(
                    operatorCase: .multiple,
                    inputNumber: $inputNumber,
                    computedNumber: $computedNumber,
                    beforeOperator: $beforeOperator,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
                OperatorView(
                    operatorCase: .divide,
                    inputNumber: $inputNumber,
                    computedNumber: $computedNumber,
                    beforeOperator: $beforeOperator,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
            }
            HStack {
                ButtonView(
                    number: 1,
                    inputNumber: $inputNumber,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
                ButtonView(
                    number: 2,
                    inputNumber: $inputNumber,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
                ButtonView(
                    number: 3,
                    inputNumber: $inputNumber,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
                ButtonView(
                    number: 0,
                    inputNumber: $inputNumber,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
            }
            HStack {
                ButtonView(
                    number: 4,
                    inputNumber: $inputNumber,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
                ButtonView(
                    number: 5,
                    inputNumber: $inputNumber,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
                ButtonView(
                    number: 6,
                    inputNumber: $inputNumber,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
                OperatorView(
                    operatorCase: .allClear,
                    inputNumber: $inputNumber,
                    computedNumber: $computedNumber,
                    beforeOperator: $beforeOperator,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
            }
            HStack {
                ButtonView(
                    number: 7,
                    inputNumber: $inputNumber,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
                ButtonView(
                    number: 8,
                    inputNumber: $inputNumber,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
                ButtonView(
                    number: 9,
                    inputNumber: $inputNumber,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
                OperatorView(
                    operatorCase: .enter,
                    inputNumber: $inputNumber,
                    computedNumber: $computedNumber,
                    beforeOperator: $beforeOperator,
                    didTappedOperator: $didTappedOperator,
                    isLastOperator: $isLastOperator)
            }
        }
    }
}

#Preview {
    ContentView()
}
