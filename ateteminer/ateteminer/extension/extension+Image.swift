//
//  extension+Image.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/06/10.
//

import Foundation
import SwiftUI

extension Image {
    
    static var genieImage: Image {
        Image(uiImage: UIImage(named: "genie") ?? UIImage())
    }
    
    static var showTextImage: Image {
        Image(uiImage: UIImage(named: "showText") ?? UIImage())
    }
    
    static var inputTextImage: Image {
        Image(uiImage: UIImage(named: "inputText") ?? UIImage())
    }
    
    static var sendButtonImage: Image {
        Image(uiImage: UIImage(named: "sendButton") ?? UIImage())
    }
}
