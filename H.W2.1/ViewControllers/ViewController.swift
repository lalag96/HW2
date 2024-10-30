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
    private let button = ButtonView(
        titleName: "Show New User",
        color: .red,
        shadow: false
    )
    private let secondButton = ButtonView(
        titleName: "Hide User",
        color: .green,
        shadow: true
    )
    private let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        view.alpha = 0.9
        
        fetchAndDisplayUsers()
        setupLabel()
        setupStackView()
        view.addSubview(stackView)
        addAction()
        
        setupLayout()
    }
    
    @objc private func buttonPressed() {
        textLabel.text = userHelper.getUsers().randomElement()?.personInfo.fullName
    }
}

// MARK: - Setup View
private extension ViewController {
    
    func addAction() {
        button.addTarget(
            self,
            action: #selector(buttonPressed),
            for: .touchUpInside
        )
        
        let action = UIAction { _ in
            self.textLabel.text = ""
        }
        secondButton.addAction(action, for: .touchUpInside)
    }
    
    func setupView() {
        view.backgroundColor = .yellow
        view.alpha = 0.9
        setupLabel()
        setupStackView()
        view.addSubview(stackView)
        setupLayout()
    }
    
    func setupLabel() {
        let randomUser = userHelper.getUsers().randomElement()
        textLabel.text = "\(randomUser?.personInfo.fullName ?? "" )"
        textLabel.font = .systemFont(ofSize: 25)
        textLabel.textColor = .blue
    }
    
    func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        stackView.spacing = 20
        
        stackView.addArrangedSubview(textLabel, button, secondButton)
    }
    
}

// MARK: - Working with data
private extension ViewController {
    func fetchAndDisplayUsers() {
        let users = userRepository.returnUsers()
        
        userHelper.addUsers(users)
        userHelper.getUsers().forEach { user in
            print(user.personInfo.fullName)
        }
    }
}

// MARK: - Setup Layout
private extension ViewController {
    func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
                                    

