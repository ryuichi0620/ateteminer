//
//  GenieSerifTextView.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/18.
//

import SwiftUI

struct GenieSerifTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.dotSerif)
            .frame(height: 100)
    }
}
