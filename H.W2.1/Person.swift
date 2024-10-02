//
//  Person.swift
//  H.W2.1
//
//  Created by  Влад on 01.10.2024.
//

import Foundation

struct Person {
    
    let surname: String
    let name: String
    
    var fullName: String {
        surname + " " + name
    }
}

