//
//  results.swift
//  aiPolicyPersonalityQuiz
//
//  Created by Scholar on 5/27/24.
//

import SwiftUI

struct results: View {
    
    @Binding var optionOneCount: Int
    @Binding var optionTwoCount: Int
    @State private var showDescription: Bool = false
    
    var body: some View {
        ZStack {
            Color(red: 41 / 255, green: 39 / 255, blue: 76 / 255)
                .ignoresSafeArea()
            
            VStack (spacing: 20) {
                Text("You are the...")
                    .font(.body)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)
                
                Text(aiPolicyName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 80)
                    .foregroundStyle(.white)
                
                Button(action: {
                    showDescription.toggle()
                }) {
                    Text("What does that mean?")
                        .frame(width: 310, height: 60)
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.medium)
                        .background(Color(red: 126 / 255, green: 82 / 255, blue: 160 / 255))
                        .cornerRadius(10.0)
                }

                if showDescription {
                    Text(description)
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.top, 80)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                }
            }
            .padding()
        }
    }
    private var aiPolicyName: String {
        if optionOneCount > optionTwoCount {
            return "EU AI Act"
        } else {
            return "U.S. CHIPS and Science Act"
        }
    }
    
    private var description: String {
        if optionOneCount > optionTwoCount {
            return "You’re energetic and lively, like how this AI policy was a landmark act that could have the Brussels Effect. You might have many connections, like how this AI policy affects AI developers both within and outside of the EU."
        } else {
            return "You’re chill and laid-back, like how this AI policy applies to primarily the U.S. manufacturing industry. You might prefer to keep to yourself, like how this AI policy attempts to keep semiconductor production domestic."
        }
    }
}

#Preview {
    results(optionOneCount: .constant(1), optionTwoCount: .constant(2))
}
