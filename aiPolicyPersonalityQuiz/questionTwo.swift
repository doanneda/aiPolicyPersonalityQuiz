//
//  questionTwo.swift
//  aiPolicyPersonalityQuiz
//
//  Created by Scholar on 5/27/24.
//

import SwiftUI

struct questionTwo: View {
    
    @Binding var optionOneCount: Int
    @Binding var optionTwoCount: Int
    
    var body: some View {
        ZStack {
            Color(red: 41 / 255, green: 39 / 255, blue: 76 / 255)
                .ignoresSafeArea()
            
            VStack (spacing: 80) {
                Text("Choose A Bottom")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                
                NavigationLink(destination: questionThree(optionOneCount: $optionOneCount, optionTwoCount: $optionTwoCount)) {
                    VStack {
                        Image("bottom-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .simultaneousGesture(TapGesture().onEnded {
                    optionOneCount += 1
                })
                
                NavigationLink(destination: questionThree(optionOneCount: $optionOneCount, optionTwoCount: $optionTwoCount)) {
                    VStack {
                        Image("bottom-2")
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
    questionTwo(optionOneCount: .constant(0), optionTwoCount: .constant(0))
}
