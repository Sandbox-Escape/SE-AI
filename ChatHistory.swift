//
//  ChatHistory.swift
//  SE AI
//
//  Created by Noahdev on 11/6/25.
//

import SwiftUI



struct ChatHistory: View {
    @State private var showUserSettings = false
    var body: some View {
        ZStack {
           
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
            
            Text("In progress, please contribute on Github and speed up development, https://github.com/sandbox-escape/SE-AI")
                
            NavigationLink(isActive: $showUserSettings) {
                UserSettings()
            } label: {
                EmptyView()
            }
            .hidden()
            
            
            Button(action: {
                showUserSettings = true
            }) {
                Image(systemName: "gearshape.fill")
                    .font(.system(size: 20, weight: .semibold, design: .default))
                    .padding(1)
                    
                    
            }
            .buttonStyle(.glass)
            .padding(.bottom, 780)
            .padding(.leading, 300)
            
                
            .navigationTitle("Chat History")
                
            
        
                    
            }
            
        }
    }


#Preview {
    ChatHistory()
}

