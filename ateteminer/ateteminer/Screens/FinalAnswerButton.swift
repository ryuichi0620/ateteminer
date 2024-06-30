//
//  FinalAnswerButton.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/18.
//

import SwiftUI

struct FinalAnswerButton: View {
    
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text("最終回答にすすむ")
                .font(.dotFinalQuestion)
                .foregroundStyle(Color.white)
                .underline()
        })
    }
}

