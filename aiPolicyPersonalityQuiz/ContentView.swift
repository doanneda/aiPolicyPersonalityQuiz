//
//  ContentView.swift
//  aiPolicyPersonalityQuiz
//
//  Created by Scholar on 5/27/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var optionOneCount: Int = 0
    @State var optionTwoCount: Int = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 41 / 255, green: 39 / 255, blue: 76 / 255)
                    .ignoresSafeArea()
                
                VStack (spacing: 20) {
                    Text("AI Policy Personality Quiz")
                        .font(.body)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                    
                    Text("Create An Outfit and We'll Tell You What AI Policy You Embody")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 80)
                        .foregroundStyle(.white)
                    
                    NavigationLink(destination: questionOne(optionOneCount: $optionOneCount, optionTwoCount: $optionTwoCount)) {
                        Text("Let's Go!")
                    }
                    .frame(width: 310, height: 60)
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.medium)
                    .background(Color(red: 126 / 255, green: 82 / 255, blue: 160 / 255))
                    .cornerRadius(10.0)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
