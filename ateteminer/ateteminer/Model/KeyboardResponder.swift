//
//  KeyboardResponder.swift
//  ateteminer
//
//  Created by 江越瑠一 on 2024/07/04.
//

import SwiftUI
import Combine

final class KeyboardResponder: ObservableObject {
    @Published var currentHeight: CGFloat = 0
    private var cancellable: AnyCancellable?

    init() {
        cancellable = NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification)
            .merge(with: NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification))
            .compactMap { notification in
                guard let frameEndUserInfoKey = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else { return 0 }
                let keyboardFrame = frameEndUserInfoKey.cgRectValue
                if notification.name == UIResponder.keyboardWillHideNotification {
                    return 0
                } else {
                    return keyboardFrame.height
                }
            }
            .assign(to: \.currentHeight, on: self)
    }

    deinit {
        cancellable?.cancel()
    }
}
