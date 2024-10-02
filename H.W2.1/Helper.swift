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
    
    func getUsers() -> [User] {
        users
    }
    
}
