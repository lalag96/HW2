//
//  Helper.swift
//  H.W2.1
//
//  Created by  Влад on 01.10.2024.
//

import Foundation

class Helper {
    
    private var users: [User] = []
    
    func addUser(_ user: User) {
        users.append(user)
    }
    
    func addUsers(_ users: [User]) {
        for user in users {
            addUser(user)
        }
    }
    
    func getUsers() -> [User] {
        users
    }
    
    func getRandomUser() -> User? {
        users.randomElement() 
    }
    
}
