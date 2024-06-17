//
//  QuestionNumberView.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/18.
//

import SwiftUI

struct QuestionNumberView: View {
    var body: some View {
        Text("Q1")
            .font(.dotQuestionNumber)
            .foregroundStyle(Color.white)
            .frame(maxWidth: .infinity, maxHeight: 20, alignment: .leading)
    }
}

#Preview {
    QuestionNumberView()
}
