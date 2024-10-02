//
//  User.swift
//  H.W2.1
//
//  Created by  Влад on 02.10.2024.
//

import Foundation

class User {
    
    let login: String
    let password: String
    let personInfo: Person
    
    init(login: String, password: String, personInfo: Person) {
        self.login = login
        self.password = password
        self.personInfo = personInfo
    }
}
