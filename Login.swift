//
//  Login.swift
//  SE AI
//
//  Created by Noahdev on 11/6/25.
//


import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("Welcome Back!")
                    .font(.largeTitle)

                TextField("Email", text: .constant(""))
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                SecureField("Password", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                Button {
                } label: {
                    Text("Login").bold()
                }
                .buttonStyle(.borderedProminent)

                Text("Still Under Development. Don't know how to login? Just use the I don't have an account button below!")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                Button("Use without account") {
                }
                .buttonStyle(.bordered)

                Spacer()

                Text("All logins go through Supabase")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                Text("Supabase Privacy Policy Applies Here")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    ContentView()
}
