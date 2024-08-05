//
//  BoardView.swift
//  MonadCalculator
//
//  Created by minsong kim on 7/28/24.
//

import SwiftUI

struct BoardView: View {
    @Binding var formula: String
    
    var body: some View {
        Text(formula)
            .font(.system(size: 70))
            .multilineTextAlignment(.leading)
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
    BoardView(formula: .constant("123"))
}
