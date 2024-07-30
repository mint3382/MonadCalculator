//
//  OperatorView.swift
//  MonadCalculator
//
//  Created by minsong kim on 7/8/24.
//

import SwiftUI

struct OperatorView: View {
    let operatorCase: Operator
    @Binding var inputNumber: String
    @Binding var computedNumber: Int
    @Binding var beforeOperator: Operator?
    @Binding var didTappedOperator: Bool
    @Binding var isLastOperator: Bool
    
    var body: some View {
        Button(action: {
            //이전에 연산자가 눌리지 않은 경우만 로직 진행
            guard didTappedOperator == false else {
                return
            }
            //마지막에 눌린 버튼이 연산자
            isLastOperator = true
            //이전 연산자가 있다면 계산, 없다면 저장하고 진행
            if beforeOperator != nil {
                didTappedOperator = true
                calculateFormula()
                beforeOperator = operatorCase
            } else if let currentNumber = Int(inputNumber) {
                didTappedOperator = true
                computedNumber = currentNumber
                beforeOperator = operatorCase
            }
        }) {
            Text(operatorCase.rawValue)
                .padding(0.0)
                .frame(width: 80, height: 80)
                .font(.largeTitle)
                .foregroundStyle(.white)
                .background(Color.indigo)
                .clipShape(Circle())
        }
    }
    
    func calculateFormula() {
        guard let currentNumber = Int(inputNumber),
              let calculateOperator = beforeOperator else {
            return
        }
        
        switch calculateOperator {
        case .plus:
            computedNumber += currentNumber
            inputNumber = String(computedNumber)
        case .minus:
            computedNumber -= currentNumber
            inputNumber = String(computedNumber)
        case .multiple:
            computedNumber *= currentNumber
            inputNumber = String(computedNumber)
        case .divide:
            computedNumber /= currentNumber
            inputNumber = String(computedNumber)
        case .enter:
            inputNumber = String(computedNumber)
            beforeOperator = nil
            didTappedOperator = false
        case .allClear:
            inputNumber = ""
            computedNumber = 0
            didTappedOperator = false
        }
        print(computedNumber)
    }
}

enum Operator: String {
    case plus = "+"
    case minus = "−"
    case multiple = "×"
    case divide = "÷"
    case enter = "="
    case allClear = "AC"
}

#Preview {
    OperatorView(operatorCase: .allClear, inputNumber: .constant(""), computedNumber: .constant(100), beforeOperator: .constant(nil), didTappedOperator: .constant(false), isLastOperator: .constant(false))
}
