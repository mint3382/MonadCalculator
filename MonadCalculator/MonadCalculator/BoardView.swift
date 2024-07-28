//
//  BoardView.swift
//  MonadCalculator
//
//  Created by minsong kim on 7/28/24.
//

import SwiftUI

struct BoardView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .multilineTextAlignment(.leading)
            .padding(.all, 100)
            .background(.cyan)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    BoardView()
}
