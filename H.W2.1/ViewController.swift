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
    private let buttonPress = UIButton()
    private let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        view.alpha = 0.9
        
        fetchAndDisplayUsers()
        setupLabel()
        setupButton()
        setupStackView()
        
        view.addSubview(stackView)
        
        setupLayout()
        
    }
    
    private func fetchAndDisplayUsers() {
        let users = userRepository.returnUsers()
        userHelper.addUsers(users)
        
        let peopleList = userHelper.getUsers()
        for users in peopleList {
            print(users.personInfo.fullName)
        }
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(buttonPress)
    }
    
    private func setupLabel() {
        let randomUser = userHelper.getUsers().randomElement()
        textLabel.text = "\(randomUser?.personInfo.fullName ?? "" )"
        textLabel.font = .systemFont(ofSize: 25)
        textLabel.textColor = .blue
    }
    
    private func setupButton() {
        buttonPress.setTitle("Show FullName", for: .normal)
        buttonPress.backgroundColor = .green
        buttonPress.setTitleColor(.black, for: .normal)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    
    }
}
                                    

