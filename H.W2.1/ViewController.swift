//
//  ViewController.swift
//  H.W2.1
//
//  Created by  Влад on 16.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let userHelper = Helper()
    private let userRepository = UserRepository()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        view.alpha = 0.9
        
 
    let users = userRepository.returnUsers()
    
        userHelper.addUsers(users)
        
        let peopleList = userHelper.getUsers()
                for users in peopleList {
                    print(users.personInfo.fullName)
                }
    }
}

