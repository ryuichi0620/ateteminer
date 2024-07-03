//
//  InputTextView.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/16.
//

import SwiftUI

struct InputTextView: View {
    
    @State var inputText = ""
    @Binding var questionText: String
    
    var inputTextBackground: Image = Image.inputText
    
    var body: some View {
        ZStack {
            inputTextBackground
            HStack {
                TextField("質問を入力してください", text: $inputText, prompt: Text("質問を入力してください...").foregroundStyle(Color.inputTextPlaceholder).font(.dotInputTextPlaceholder))
                    .font(.dotInputTextPlaceholder)
                
                Button(action: {
                    questionText = inputText
                    inputText = ""
                    
                }, label: {
                    ZStack {
                        Image.sendButton
                        Text("送信")
                            .font(.dotInputTextPlaceholder)
                            .foregroundStyle(Color.white)
                    }
                })
                .buttonStyle(SlightlyHighlightedButtonStyle(normalColor: .clear, highlightColor: Color.gray.opacity(0.2))) // 透明背景とグレーのハイライト
                
            }.padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 5))
        }
        .backgroundStyle(Color.background)
    }
}

struct SlightlyHighlightedButtonStyle: ButtonStyle {
    var normalColor: Color
    var highlightColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(configuration.isPressed ? highlightColor : normalColor)
            .brightness(configuration.isPressed ? 0.1 : 0) // ハイライト時に少しだけ明るくする
            .scaleEffect(configuration.isPressed ? 0.98 : 1.0) // ハイライト時に少し縮小
            .animation(.easeInOut, value: configuration.isPressed)
    }
}
