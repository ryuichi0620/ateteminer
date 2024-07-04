//
//  baseView.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/16.
//

import SwiftUI

struct BaseView: View {
    
    @StateObject private var baseViewModel = BaseViewModel()
    @ObservedObject var keyboardResponder = KeyboardResponder()
        
    var body: some View {
        ZStack {
            VStack {
                GenieSerifTextView(text: baseViewModel.answerMode.genieSerif)
                Image.genie
                    .resizable()
                    .scaledToFit()
                
                Spacer().frame(height: 60)
                
                QuestionNumberView(numberText: $baseViewModel.questionNumberText, answerMode: baseViewModel.answerMode)
                QuestionTextView(text: $baseViewModel.questionText)
                
                Spacer().frame(height: 30)
                
                InputTextView(questionText: $baseViewModel.questionText, placeholder: baseViewModel.answerMode.placeholder)
                FinalAnswerButton(answerMode: $baseViewModel.answerMode, answerText: $baseViewModel.answerText)
            }
            .frame(width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.height)
            .padding(.bottom, keyboardResponder.currentHeight)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.background)
    }
}

struct baseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}

