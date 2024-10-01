//
//  ViewController.swift
//  H.W2.1
//
//  Created by  Влад on 16.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Меня зовут \(person.fullName), я создал свое первое приложение")
       
    }
}

