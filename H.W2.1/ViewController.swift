//
//  ViewController.swift
//  H.W2.1
//
//  Created by  Влад on 16.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var userHelper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let personInfoOne = Person(surname: "Vlad", name: "Tsipushtanov")
        let personInfTwo = Person(surname: "Gafurov", name: "Marat")
        
        let userOne = User(
            login: "sobaka_2000",
            password: "123456",
            personInfo: personInfoOne
        )
    
        let userTwo = User(
            login: "porovoz77",
            password: "098765",
            personInfo: personInfTwo
        )
        
        userHelper.addUser(userOne)
        userHelper.addUser(userTwo)
        
            let peopleList = userHelper.getUsers()
                for users in peopleList {
                    print(users.personInfo.fullName)
                }
    }
}

