//
//  ContentView.swift
//  MonadCalculator
//
//  Created by minsong kim on 7/6/24.
//

import SwiftUI

struct ContentView: View {
    @State var leftNumber: String? = nil
    @State var rightNumber: String? = "0"
    @State var inputOperator: Operator? = nil
    
    var body: some View {
        BoardView(leftNumber: $leftNumber,
                  rightNumber: $rightNumber,
                  inputOperator: $inputOperator)
        VStack {
            let operators: [Operator] = [.plus, .minus, .multiple, .divide]
            LazyHGrid(rows: Array(repeating: GridItem(.flexible()), count: 1)) {
                ForEach(operators, id: \.self) { operatorCase in
                    OperatorView(
                        operatorCase: operatorCase,
                        leftNumber: $leftNumber,
                        rightNumber: $rightNumber,
                        inputOperator: $inputOperator
                    )
                }
            }
            let numbers: [Int] = [1, 2, 3, 0]
            LazyHGrid(rows: Array(repeating: GridItem(.flexible()), count: 1)) {
                ForEach(numbers, id: \.self) { number in
                    ButtonView(
                        number: number,
                        rightNumber: $rightNumber
                    )
                }
            }
            HStack {
                let numbers: [Int] = [4, 5, 6]
                LazyHGrid(rows: Array(repeating: GridItem(.flexible()), count: 1)) {
                    ForEach(numbers, id: \.self) { number in
                        ButtonView(
                            number: number,
                            rightNumber: $rightNumber
                        )
                    }
                }
                ResultOperatorView(
                    operatorCase: .allClear,
                    leftNumber: $leftNumber,
                    rightNumber: $rightNumber,
                    inputOperator: $inputOperator
                )
            }
            HStack {
                let numbers: [Int] = [7, 8, 9]
                LazyHGrid(rows: Array(repeating: GridItem(.flexible()), count: 1)) {
                    ForEach(numbers, id: \.self) { number in
                        ButtonView(
                            number: number,
                            rightNumber: $rightNumber
                        )
                    }
                }
                ResultOperatorView(
                    operatorCase: .enter,
                    leftNumber: $leftNumber,
                    rightNumber: $rightNumber,
                    inputOperator: $inputOperator
                )
            }
        }
    }
}

#Preview {
    ContentView()
}
