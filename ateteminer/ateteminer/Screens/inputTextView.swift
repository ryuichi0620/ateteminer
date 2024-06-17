//
//  inputTextView.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/16.
//

import SwiftUI

struct inputTextView: View {
    
    @State var inputText = ""
    
    var inputTextBackground: Image = Image.inputText
    
    var body: some View {
        ZStack {
            inputTextBackground
            HStack {
                TextField("質問を入力してください", text: $inputText, prompt: Text("質問を入力してください...").foregroundStyle(Color.inputTextPlaceholder).font(.dotInputTextPlaceholder))
                    .font(.dotInputTextPlaceholder)
                ZStack {
                    Image.sendButton
                    Text("送信")
                        .font(.dotInputTextPlaceholder)
                        .foregroundStyle(Color.white)
                }
            }.padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 5))
        }
        .backgroundStyle(Color.background)
    }
}

#Preview {
    inputTextView()
}
