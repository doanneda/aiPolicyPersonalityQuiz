//
//  questionOne.swift
//  aiPolicyPersonalityQuiz
//
//  Created by Scholar on 5/27/24.
//

import SwiftUI

struct questionOne: View {
    
    @Binding var optionOneCount: Int
    @Binding var optionTwoCount: Int
    
    var body: some View {
        ZStack {
            Color(red: 41 / 255, green: 39 / 255, blue: 76 / 255)
                .ignoresSafeArea()
            
            VStack (spacing: 80) {
                Text("Choose A Top")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                
                NavigationLink(destination: questionTwo(optionOneCount: $optionOneCount, optionTwoCount: $optionTwoCount)) {
                    VStack {
                        Image("top-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .simultaneousGesture(TapGesture().onEnded {
                    optionOneCount += 1
                })
                
                NavigationLink(destination: questionTwo(optionOneCount: $optionOneCount, optionTwoCount: $optionTwoCount)) {
                    VStack {
                        Image("top-2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .simultaneousGesture(TapGesture().onEnded {
                    optionTwoCount += 1
                })
            }
            .navigationBarBackButtonHidden(true)
            .padding(.top, 50)
            .padding(.bottom, 50)
        }
    }
}

#Preview {
    questionOne(optionOneCount: .constant(0), optionTwoCount: .constant(0))
}
