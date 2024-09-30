//
//  ViewController.swift
//  H.W2.1
//
//  Created by  Влад on 16.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var name = PersonController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Меня зовут \(name.fullName.person), я создал свое первое приложение")
       
    }


}

