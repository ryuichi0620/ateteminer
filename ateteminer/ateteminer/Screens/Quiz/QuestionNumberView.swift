//
//  QuestionNumberView.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/18.
//

import SwiftUI

struct QuestionNumberView: View {
    
    @Binding var numberText: String
    var answerMode: BaseViewModel.AnswerMode
    
    var body: some View {
        Text((answerMode == .answer) ? "" : numberText)
            .font(.dotQuestionNumber)
            .foregroundStyle(Color.white)
            .frame(maxWidth: .infinity, maxHeight: 20, alignment: .leading)
    }
}
