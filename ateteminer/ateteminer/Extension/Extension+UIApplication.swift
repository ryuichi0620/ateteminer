//
//  Extension+UIApplication.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/07/04.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing(_ force: Bool) {
        self.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
