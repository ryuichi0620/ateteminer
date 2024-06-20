//
//  baseView.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/16.
//

import SwiftUI

struct BaseView: View {
    
    @StateObject private var baseViewModel = BaseViewModel()
    
    @State private var genieSerifTextView: GenieSerifTextView!
    @State private var questionNumberView: QuestionNumberView!
    @State private var questionTextView: QuestionTextView!
    @State private var inputTextView: InputTextView!
    @State private var finalAnswerButton: FinalAnswerButton!
    
    var body: some View {
        ZStack {
            VStack {
                genieSerifTextView
                Image.genie
                    .resizable()
                    .scaledToFit()
                
                Spacer().frame(height: 60)
                
                questionNumberView
                questionTextView
                
                Spacer().frame(height: 30)
                
                inputTextView
                finalAnswerButton
            }
            .frame(width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.height)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.background)
        .onAppear {
            genieSerifTextView = GenieSerifTextView(text: $baseViewModel.genieSerifText)
            questionNumberView = QuestionNumberView(numberText: $baseViewModel.questionNumberText)
            questionTextView = QuestionTextView(text: $baseViewModel.questionText)
            
        }
    }
}

struct baseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}

