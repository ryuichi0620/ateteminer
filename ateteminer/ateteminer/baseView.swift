//
//  baseView.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/16.
//

import SwiftUI

struct baseView: View {
    var body: some View {
        VStack {
            Image.genie
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 50)
                
            Image.showText
            Image.inputText
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.background)
    }
}

#Preview {
    baseView()
}
