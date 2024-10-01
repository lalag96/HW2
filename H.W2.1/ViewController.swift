//
//  ViewController.swift
//  H.W2.1
//
//  Created by  Влад on 16.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var person = Person()
    var personHelper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Меня зовут \(person.fullName), я создал свое первое приложение")
        
        personHelper.newPersonHelper(name: "Oleg", surName: "Kuznetsov" )
        personHelper.newPersonHelper(name: "Marat", surName: "Gafurov")
        personHelper.printPersonHelper()
    }
}

