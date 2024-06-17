//
//  baseView.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/16.
//

import SwiftUI

struct baseView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("私に質問してください。")
                    .font(.dotSerif)
                    .frame(height: 100)
                
                Image.genie
                    .resizable()
                    .scaledToFit()
                
                Spacer().frame(height: 60)
                
                Text("Q1")
                    .font(.dotQuestionNumber)
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity, maxHeight: 20, alignment: .leading)
                
                QuestionTextView()
                
                Spacer().frame(height: 30)
                inputTextView()
                FinalAnswerButton()
            }
            .frame(width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.height)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.background)
    }
}

#Preview {
    baseView()
}

