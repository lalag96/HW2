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
    private let textLabel = UILabel()
    private let buttonPress: UIButton = {
        let button = UIButton()
        button.setTitle("Show FullName", for: .normal)
        button.backgroundColor = .green
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        view.alpha = 0.9
        
        setupLabel()
        view.addSubview(textLabel)
        view.addSubview(buttonPress)
        
        fetchAndDisplayUsers()
        
    }
    
    private func fetchAndDisplayUsers() {
        let users = userRepository.returnUsers()
        userHelper.addUsers(users)
        
        let peopleList = userHelper.getUsers()
        for users in peopleList {
            print(users.personInfo.fullName)
        }
    }
    
    private func setupLabel() {
        let randomUser = userRepository.returnUsers().randomElement()
        textLabel.text = "\(randomUser?.personInfo.fullName ?? "" )"
        textLabel.font = .systemFont(ofSize: 25)
        textLabel.textColor = .blue
        textLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
    }
}

