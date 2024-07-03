//
//  baseView.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/16.
//

import SwiftUI

struct BaseView: View {
    
    @StateObject private var baseViewModel = BaseViewModel()
        
    var body: some View {
        ZStack {
            VStack {
                GenieSerifTextView(text: $baseViewModel.genieSerifText)
                Image.genie
                    .resizable()
                    .scaledToFit()
                
                Spacer().frame(height: 60)
                
                QuestionNumberView(numberText: $baseViewModel.questionNumberText)
                QuestionTextView(text: $baseViewModel.questionText)
                
                Spacer().frame(height: 30)
                
                InputTextView(questionText: $baseViewModel.questionText)
                FinalAnswerButton()
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

