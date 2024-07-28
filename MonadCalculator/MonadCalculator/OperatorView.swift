//
//  OperatorView.swift
//  MonadCalculator
//
//  Created by minsong kim on 7/8/24.
//

import SwiftUI

struct OperatorView: View {
    let operatorCase: Operator
    
    var body: some View {
        Button(action: {
            print(operatorCase.rawValue)
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
}

enum Operator: String {
    case plus = "+"
    case minus = "−"
    case multiple = "×"
    case divide = "÷"
    case dot = "."
    case enter = "="
    case clear = "C"
    case allClear = "AC"
    case changeLine = "⏎"
    case download
}

#Preview {
    OperatorView(operatorCase: .plus)
}
