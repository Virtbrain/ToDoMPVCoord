//
//  SingleTaskScreenViewController.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 01.02.2024.
//

import UIKit

class SingleTaskScreenViewController: UIViewController {
    
    var onButtonBackTapped: (() -> Void )?
    var presenter: SingleTaskPresenterProtocol?
    
    let label = CustomLabel(text: "SingleTaskScreenViewController")
    let button = CustomButton(bgColor: .systemPink, titleColor: .black, text: "Go to Main Screen")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .red
        self.setupView()
    }
    
    private func setupView() {
        self.view.addSubview(label)
        self.view.addSubview(button)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            label.widthAnchor.constraint(equalToConstant: 200),
            label.heightAnchor.constraint(equalToConstant: 50),
            
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 70),
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 250),
            button.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        button.addTarget(self, action: #selector(onButtonPress), for: .touchUpInside)
    }
    
    @objc private func onButtonPress() {
        self.onButtonBackTapped?()
    }

}
