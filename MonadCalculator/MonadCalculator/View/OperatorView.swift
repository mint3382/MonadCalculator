//
//  OperatorView.swift
//  MonadCalculator
//
//  Created by minsong kim on 7/8/24.
//

import SwiftUI

struct OperatorView: View, Calculatable {
    let operatorCase: Operator
    @Binding var leftNumber: String?
    @Binding var rightNumber: String?
    @Binding var inputOperator: Operator?
    
    var body: some View {
        Button(action: {
            if rightNumber == nil {
                inputOperator = operatorCase
                return
            } else if leftNumber != nil, inputOperator != nil {
                leftNumber = calculate()
            } else if let _ = rightNumber {
                leftNumber = rightNumber
            }
            rightNumber = nil
            inputOperator = operatorCase
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

#Preview {
    OperatorView(operatorCase: .plus, leftNumber: .constant("22"), rightNumber: .constant("2"), inputOperator: .constant(nil))
}
