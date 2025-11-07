//
//  ContentView.swift
//  SE AI
//
//  Created by Noahdev on 11/7/25.
//

import SwiftUI
import Foundation
import FoundationModels

struct ContentView: View {
    @State private var prompt = ""
    @State private var response = ""
    @State private var isLoading = false

    var body: some View {
        NavigationStack {
            
            VStack(spacing: 16) {
                TextField("Ask SE AI", text: $prompt)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.sentences)
                    .disableAutocorrection(false)

                Button(action: {
                    let trimmed = prompt.trimmingCharacters(in: .whitespacesAndNewlines)

                    guard !trimmed.isEmpty else {
                        response = "Oops, something went wrong. Is your prompt empty?"
                        return
                    }

                    isLoading = true
                    response = ""

                    let session = LanguageModelSession()

                    Task { @MainActor in
                        do {
                            let reply = try await session.respond(to: trimmed).content
                            response = reply
                        } catch {
                            response = "Failed to get a response: \(error.localizedDescription)"
                        }
                        isLoading = false
                    }
                })

                {
                    Text("Ask")
                        .fontWeight(.semibold)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 12)
                        .frame(maxWidth: .infinity)
                }
                .disabled(prompt.isEmpty)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 14, style: .continuous))
                .overlay(
                    RoundedRectangle(cornerRadius: 14, style: .continuous)
                        .strokeBorder(.white.opacity(0.3), lineWidth: 1)
                        .blendMode(.overlay)
                )
                .shadow(color: .black.opacity(0.1), radius: 12, x: 0, y: 6)
                .padding(.top, 4)

                if isLoading {
                    ProgressView("Contribute  on Github to improve the service!")
                }

                if !response.isEmpty {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Response")
                            .font(.headline)
                        ScrollView {
                            Text(response)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }

                Spacer(minLength: 0)
            }
            .background(
                LinearGradient(colors: [Color.black.opacity(0.05), Color.blue.opacity(0.05)], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .padding()
            .navigationTitle("SE AI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
