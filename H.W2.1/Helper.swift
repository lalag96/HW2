//
//  Helper.swift
//  H.W2.1
//
//  Created by  Влад on 01.10.2024.
//

import Foundation

class Helper {
    
    var person: [String] = []
    
    func newPersonHelper(name: String, surName: String) {
        
        let fullName = name + " " + surName
        
        person.append(fullName)
    }
    
    func printPersonHelper() {
        
        for fullName in person {
            print(fullName)
        }
    }
}
