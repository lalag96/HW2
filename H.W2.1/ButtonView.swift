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
        setupButton(titleName, color, shadow)

        
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton(_ titleName: String, _ color: UIColor, _ shadow: Bool) {
        setTitle(titleName, for: .normal)
        backgroundColor = UIColor(cgColor: color.cgColor)
        setTitleColor(.black, for: .normal)
        
        if shadow == true {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOpacity = 0.7
            layer.shadowRadius = 10
            layer.shadowOffset = .zero
        }
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let shadowPath = UIBezierPath(rect: bounds)
        layer.shadowPath = shadowPath.cgPath
    }
    
}
