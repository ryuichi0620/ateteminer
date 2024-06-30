//
//  BaseViewModel.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/18.
//

import Foundation
import Combine

final class BaseViewModel: ObservableObject {
    
    @Published var genieSerifText = "私に質問してください。"
    @Published var questionNumberText = "Q1"
    @Published var questionText = "高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？"
    @Published var finalAnswerText = "最終回答にすすむ"
    
    lazy var writeQuestionText: (String) -> Void = { [weak self] text in
        self?.questionText = text
    }
}
