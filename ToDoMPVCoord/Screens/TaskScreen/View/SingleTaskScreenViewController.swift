//
//  SingleTaskScreenViewController.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 01.02.2024.
//

import UIKit

class SingleTaskScreenViewController: UIViewController {
    
    weak var coordinator: Coordinator?
    var presenter: SingleTaskPresenterProtocol?
    
    let label = CustomLabel(text: "SingleTaskScreenViewController")
    let button = CustomButton(bgColor: buttonBgColor, titleColor: .white, text: "Go to Main Screen")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = applicationBgColor
        setupView()
    }
    
    private func setupView() {
        view.addSubview(label)
        view.addSubview(button)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.widthAnchor.constraint(equalToConstant: 200),
            label.heightAnchor.constraint(equalToConstant: 50),
            
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 70),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 250),
            button.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        button.addTarget(self, action: #selector(onButtonPress), for: .touchUpInside)
    }
    
    @objc private func onButtonPress() {
        coordinator?.showTasksScreenBack()
    }

}
