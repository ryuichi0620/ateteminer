//
//  SampleView.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/07/03.
//

import SwiftUI

struct SampleView: View {
    @StateObject var viewModel = ViewModel()
    @State private var inputText: String = ""

    var body: some View {
        VStack {
            CustomLabel(text: inputText)
            SampleTextField(text: $inputText)
        }
        .padding()
    }
}

struct SampleTextField: View {
    @FocusState var isFocused: Bool
    @State var inputText = ""
    @Binding var text: String
    
    var body: some View {
        TextField("Enter text", text: $inputText)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .focused($isFocused)
            .onChange(of: isFocused) {
                if !isFocused {
                    text = inputText
                }
            }
            
    }
}

struct CustomLabel: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
    }
}

final class ViewModel: ObservableObject {
    @Published var text: String = "sample"
}

#Preview {
    SampleView()
}
