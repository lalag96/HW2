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
        
        let personOne = Person()
        personOne.name = "Vlad"
        personOne.surname = "Tsipushtanov"
        
        let personTwo = Person()
        personOne.name = "Marat"
        personOne.surname = "Gafurov"
    
        personHelper.addPerson(personOne)
        personHelper.addPerson(personTwo)
        
        let peopleList = personHelper.printPersons()
                for person in peopleList {
                    print(person.fullName)
                }
    }
}

