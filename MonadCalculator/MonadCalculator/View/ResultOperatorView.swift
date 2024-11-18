//
//  ResultView.swift
//  MonadCalculator
//
//  Created by minsong kim on 11/18/24.
//

import SwiftUI

struct ResultOperatorView: View {
    let operatorCase: ResultOperator
    @Binding var inputNumber: String
    @Binding var computedNumber: Int
    @Binding var didTappedOperator: Bool
    @Binding var isLastOperator: Bool
    
    var body: some View {
        Button(action: {
            didTappedOperator = false
            isLastOperator = false
        }) {
            Text(operatorCase.rawValue)
                .padding(0.0)
                .frame(width: 80, height: 80)
                .font(.largeTitle)
                .foregroundStyle(.white)
                .background(Color.gray)
                .clipShape(Circle())
        }
    }
    
    func calculateFormula() {
        
    }
}

enum ResultOperator: String {
    case enter = "="
    case allClear = "AC"
}

#Preview {
    ResultOperatorView(operatorCase: .allClear, inputNumber: .constant("0"), computedNumber: .constant(0), didTappedOperator: .constant(true), isLastOperator: .constant(true))
}
