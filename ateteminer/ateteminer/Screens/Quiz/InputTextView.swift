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
    var placeholder: String
    
    var inputTextBackground: Image = Image.inputText
    
    var body: some View {
        ZStack {
            inputTextBackground
            HStack {
                TextField("", text: $inputText, prompt: Text(placeholder).foregroundStyle(Color.inputTextPlaceholder).font(.dotInputTextPlaceholder))
                    .font(.dotInputTextPlaceholder)
                
                Button(action: {
                    sendMessage()
                }, label: {
                    sendButton
                })
                .buttonStyle(SlightlyHighlightedButtonStyle(normalColor: .clear, highlightColor: Color.gray.opacity(0.2))) // 透明背景とグレーのハイライト
                
            }.padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 5))
        }
        .backgroundStyle(Color.background)
    }
    
    var sendButton: some View {
        ZStack {
            Image.sendButton
            Text("送信")
                .font(.dotInputTextPlaceholder)
                .foregroundStyle(Color.white)
        }
    }
    
    func sendMessage() {
        UIApplication.shared.endEditing(true)
        questionText = inputText
        inputText = ""
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
