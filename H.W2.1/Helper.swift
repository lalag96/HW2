//
//  Helper.swift
//  H.W2.1
//
//  Created by  Влад on 01.10.2024.
//

import Foundation

class Helper {
    
    var persons: [Person] = []
    
    func addPerson(_ person: Person) {
        persons.append(person)
    }
    
    func printPersons() -> [Person] {
        persons
    }
    
}
