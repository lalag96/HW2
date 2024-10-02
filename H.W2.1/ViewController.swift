//
//  ViewController.swift
//  H.W2.1
//
//  Created by  Влад on 16.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var personHelper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let personOne = Person(surname: "Vlad", name: "Tsipushtanov")
        let personTwo = Person(surname: "Marat", name: "Marat")
    
        personHelper.addPerson(personOne)
        personHelper.addPerson(personTwo)
        
        let peopleList = personHelper.getPersons()
                for person in peopleList {
                    print(person.fullName)
                }
    }
}

