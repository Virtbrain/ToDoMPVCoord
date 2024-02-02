//
//  SingleTaskScreenViewController.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 01.02.2024.
//

import UIKit

class SingleTaskScreenViewController: UIViewController {
    
    var onButtonBackTapped: (() -> Void )?
    
    let label = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        label.text = "SingleTaskScreenViewController"
        return label
    }()
    
    let button: UIButton = {
        let button = UIButton(configuration: .plain())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle("Go To Sengle task Screen", for: .normal)
        button.setTitleColor(UIColor(white: 1, alpha: 0.3), for: .highlighted)
        button.tintColor = .white
        button.layer.cornerRadius = 20
        button.layer.shadowColor = UIColor(named: "black")?.cgColor
        button.layer.shadowOpacity = 0.2
        button.layer.shadowRadius = 10
        button.layer.shadowOffset = CGSize(width: 10, height: 5)
        
        return button
    }()

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
