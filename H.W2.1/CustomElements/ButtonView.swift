//
//  ButtonView.swift
//  H.W2.1
//
//  Created by  Влад on 21.10.2024.
//

import UIKit

class ButtonView: UIButton {
    
    init(titleName: String, color: UIColor, shadow: Bool) {
        super.init(frame: .zero)
        setupButton(titleName: titleName, color: color, shadow: shadow)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Button configuration

private extension ButtonView {
    func setupButton(titleName: String, color: UIColor, shadow: Bool) {
        setTitle(titleName, for: .normal)
        backgroundColor = color
        setTitleColor(.black, for: .normal)
        configureShadow(shadow)
    }
}

// MARK: - Customizing the appearance
private extension ButtonView {
    func configureShadow(_ shadow: Bool) {
        if shadow {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOffset = CGSize(width: 0, height: 2)
            layer.shadowOpacity = 0.3
            layer.shadowRadius = 4
        } else {
            layer.shadowOpacity = 0
        }
    }
}
