//
//  baseView.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/16.
//

import SwiftUI

struct BaseView: View {
    
    private let genieSerifTextView = GenieSerifTextView()
    private let questionNumberView = QuestionNumberView()
    private let questionTextView = QuestionTextView()
    private let inputTextView = InputTextView()
    private let finalAnswerButton = FinalAnswerButton()
    
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
    }
}

struct baseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}

