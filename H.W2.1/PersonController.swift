//
//  PersonController.swift
//  H.W2.1
//
//  Created by  Влад on 30.09.2024.
//

import UIKit

class PersonController: UIViewController {
    
    class Person {
        
        private var surname = "Tsipushtanov"
        private var name = "Vlad"
        
        var person: String {
            surname + " " + name
        }
    }
    
    let person: Person = Person()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Меня зовут \(person.person), я создал свое первое приложение")
       
    }

}
