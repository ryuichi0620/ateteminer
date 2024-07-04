//
//  FinalAnswerButton.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/18.
//

import SwiftUI

struct FinalAnswerButton: View {
    
    @Binding var answerMode: BaseViewModel.AnswerMode
    @Binding var answerText: String
    
    var body: some View {
        Button(action: {
            answerMode = (answerMode == .answer) ? .input(answerText) : .answer
        }, label: {
            Text(answerMode.finalAnswerButtonText)
                .font(.dotFinalQuestion)
                .foregroundStyle(Color.white)
                .underline()
        })
    }
}
