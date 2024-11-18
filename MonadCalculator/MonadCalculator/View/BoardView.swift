//
//  BoardView.swift
//  MonadCalculator
//
//  Created by minsong kim on 7/28/24.
//

import SwiftUI

struct BoardView: View {
    @Binding var leftNumber: String?
    @Binding var rightNumber: String?
    @Binding var inputOperator: Operator?
    
    var body: some View {
        VStack {
            Text(leftNumber ?? "")
                .font(.system(size: 70))
                .multilineTextAlignment(.trailing)
                .frame(minWidth: 300,maxWidth: 320, alignment: .trailing)
                .lineLimit(2)
            Text(inputOperator?.rawValue ?? "")
                .font(.system(size: 40))
                .lineLimit(1)
                .frame(minWidth: 300,maxWidth: 320, alignment: .trailing)
            Text(rightNumber ?? "")
                .font(.system(size: 70))
                .multilineTextAlignment(.trailing)
                .frame(minWidth: 300,maxWidth: 320, alignment: .trailing)
                .lineLimit(2)
        }
        .frame(minWidth: 300,
               maxWidth: 320,
               minHeight: 250,
               maxHeight: 280)
        .padding(.all, 20)
        .background(.cyan)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    BoardView(leftNumber: .constant("234"),rightNumber: .constant("123"), inputOperator: .constant(.plus))
}
