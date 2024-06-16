//
//  extension+Image.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/10.
//

import Foundation
import SwiftUI

extension Image {
    
    static var genie: Image {
        Image(uiImage: UIImage(named: "genie") ?? UIImage())
    }
    
    static var showText: Image {
        Image(uiImage: UIImage(named: "showText") ?? UIImage())
    }
    
    static var inputText: Image {
        Image(uiImage: UIImage(named: "inputText") ?? UIImage())
    }
    
    static var sendButton: Image {
        Image(uiImage: UIImage(named: "sendButton") ?? UIImage())
    }
}
