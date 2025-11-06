//
//  ChatHistory.swift
//  SE AI
//
//  Created by Noahdev on 11/6/25.
//

import SwiftUI




struct ChatHistory: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1326171756, green: 0.1326171756, blue: 0.1326171756, alpha: 1))
                .ignoresSafeArea()
            Text("Chat History")
                .foregroundStyle(.white)
                .font(.system(size: 35, weight: .bold))
                .padding(.bottom, 700)
            
        }
    }
}

#Preview {
    ChatHistory()
}

