//
//  ViewController.swift
//  H.W2.1
//
//  Created by  Влад on 16.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let surname = "Tsipushtanov"
    let name = "Vlad"
    
    var person: String {
        surname + " " + name
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Меня зовут \(person), я создал свое первое приложение")
       
    }


}

