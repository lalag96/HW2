//
//  UIView+AddSubview.swift
//  H.W2.1
//
//  Created by  Влад on 27.10.2024.
//

import UIKit

extension UIView {
    
    func addSubview(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
