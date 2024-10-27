//
//  UIStackView+AddStack.swift
//  H.W2.1
//
//  Created by  Влад on 27.10.2024.
//

import UIKit

extension UIStackView {
    func addArrangedSubview(_ stack: [UIView]) {
        for view in stack {
            addArrangedSubview(view)
        }
    }
}

