//
//  UserSettings.swift
//  SE AI
//
//  Created by Noahdev on 11/6/25.
//

import SwiftUI


    
struct UserSettings: View {
    var body: some View {
        
        
        Text("Incomplete. If you have an issue regarding your data, please create a data ticket on the Discord Server featured on the website for immediate support.")
        
            .padding(.bottom, 20)
        
        Text("Don't have Discord?")
            
        
        Text("Email sandboxescapeteam@gmail.com for data deletion and support. We will reply in 1-2 weeks.")
            
            .padding(.top, 20)
            .padding(.bottom, 20)
        
        Text("Do not give your information to anyone who claims to be a part of Sandbox Escape or SE AI. The Discord Server and Zendesk are the only official channels. More info in the documentation, either in-app or on the website.")
        
        Button(action: {
            
        }) {
            Text("Subscribe to E-Mails")
                .font(.system(size: 20, weight: .semibold, design: .default))
                .padding(8)
        }
            .buttonStyle(.glass)
        
        
    }
        
}

#Preview {
    UserSettings()
}
