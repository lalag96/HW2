//
//  UserRepository.swift
//  H.W2.1
//
//  Created by  Влад on 07.10.2024.
//

import Foundation

class UserRepository {
    
    func returnUsers() -> [User] {
        
        let personInfoOne = Person(surname: "Vlad", name: "Tsipushtanov")
        let personInfoTwo = Person(surname: "Gafurov", name: "Marat")
        
        let userOne = User(
            login: "sobaka_2000",
            password: "123456",
            personInfo: personInfoOne
        )
    
        let userTwo = User(
            login: "porovoz77",
            password: "098765",
            personInfo: personInfoTwo
        )
        
        return [userOne, userTwo]
    }
    
}
