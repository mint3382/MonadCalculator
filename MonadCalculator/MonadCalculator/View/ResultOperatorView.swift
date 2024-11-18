//
//  ResultOperatorView.swift
//  MonadCalculator
//
//  Created by minsong kim on 11/18/24.
//

import SwiftUI

struct ResultOperatorView: View, Calculatable {
    let operatorCase: ResultOperator
    @Binding var leftNumber: String?
    @Binding var rightNumber: String?
    @Binding var inputOperator: Operator?
    
    var body: some View {
        Button(action: {
            switch operatorCase {
            case .enter:
                rightNumber =  calculate()
                leftNumber = nil
                inputOperator = nil
            case .allClear:
                leftNumber = nil
                rightNumber = "0"
                inputOperator = nil
            }
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

#Preview {
    ResultOperatorView(operatorCase: .allClear, leftNumber: .constant("0"), rightNumber: .constant("0"), inputOperator: .constant(.minus))
}
