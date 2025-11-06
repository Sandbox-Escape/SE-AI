import SwiftUI
import Foundation
import FoundationModels

struct ContentView: View {
    @State private var message: String = ""
    @State private var showChatHistory = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(#colorLiteral(red: 0.1326171756, green: 0.1326171756, blue: 0.1326171756, alpha: 1))
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .safeAreaInset(edge: .bottom) {
                    HStack(spacing: 8) {
                        TextField("Chat with SE AI", text: $message, axis: .vertical)
                            .textFieldStyle(.plain)
                            .foregroundStyle(.primary)
                            .padding(.vertical, 10)
                    }
                    
                    .padding(.horizontal, 14)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .overlay(
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .stroke(.white.opacity(0.18), lineWidth: 1)
                    )
                    .shadow(color: .black.opacity(0.25), radius: 12, x: 0, y: 8)
                    .padding(.horizontal, 50)
                    .padding(.bottom, 30)
                }
                .padding(.vertical, -30)
                .overlay(alignment: .topLeading) {
                    NavigationLink(isActive: $showChatHistory) {
                        ChatHistory()
                    } label: {
                        EmptyView()
                    }
                    .hidden()
                    
                    Button(action: {
                        showChatHistory = true
                    }) {
                        Text("☰")
                            .font(.system(size: 20, weight: .semibold, design: .default))
                            .padding(8)
                    }
                    .accessibilityLabel("Menu")
                    .buttonStyle(.glass)
                    .padding(.top, 8)
                    .padding(.trailing, 12)
                    .padding(.horizontal, 12)
                    
                }
                
                Text("SE AI")
                    .font(.system(size: 50, weight: .semibold, design: .default))
                    .foregroundColor(.white)
                    .padding(.bottom, 700)
                
            }
            .navigationTitle("SE AI")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            
        }
    }
}

#Preview {
    ContentView()
}
