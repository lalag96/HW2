//
//  Person.swift
//  H.W2.1
//
//  Created by  Влад on 01.10.2024.
//

import Foundation

class Person {
    
    let surname: String
    let name: String
    
    init(surname: String, name: String) {
        self.surname = surname
        self.name = name
    }
    
    var fullName: String {
        surname + " " + name
    }
}


