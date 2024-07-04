//
//  BaseViewModel.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/18.
//

import Foundation

final class BaseViewModel: ObservableObject {
    
    @Published var questionNumberText = "Q1"
    @Published var questionText = ""
    @Published var finalAnswerText = "最終回答にすすむ"
    @Published var answerMode = AnswerMode.input("私に質問してください")
    @Published var answerText = "私に質問してください"
    
}

extension BaseViewModel {
    enum AnswerMode: Equatable {
        case input(String)
        case answer
        
        var genieSerif: String {
            switch self {
                case .input(let serif):
                    serif
                case .answer:
                    "さあ、当ててください。\n私が思い浮かべているものはなんでしょう。"
                }
        }
        
        var placeholder: String {
            switch self {
                case .input(_):
                    "質問を入力してください..."
                case .answer:
                    "回答を入力してください..."
            }
        }
        
        var finalAnswerButtonText: String {
            switch self {
                case .input(_):
                    "最終回答に進む"
                case .answer:
                    "質問に戻る"
            }
        }
    }
}
