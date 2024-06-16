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
//                    .padding(.horizontal, 50)
                
                Spacer().frame(height: 60)
                
                Text("Q1")
                    .font(.dotQuestionNumber)
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity, maxHeight: 20, alignment: .leading)
                Image.showText
                Spacer().frame(height: 30)
                Image.inputText
                Button(action: {
                    print("tapped")
                }, label: {
                    Text("最終回答にすすむ")
                        .font(.dotFinalQuestion)
                        .foregroundStyle(Color.white)
                        .underline()
                })
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
