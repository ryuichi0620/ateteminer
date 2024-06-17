//
//  QuestionTextView.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/18.
//

import SwiftUI

struct QuestionTextView: View {
    var body: some View {
        ZStack {
            Image.showText
            Text("高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？高さは10M以内ですか？")
                .font(.dotFinalQuestion)
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .lineLimit(4) // テキストを1行に制限
                .truncationMode(.tail) // はみ出した部分を省略記号にする
        }
    }
}

#Preview {
    QuestionTextView()
}
