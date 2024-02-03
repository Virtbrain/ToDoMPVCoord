//
//  MainScreenViewController.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 01.02.2024.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    weak var coordinator: Coordinator?
    
//    var onButtonTapped: (() -> Void)?
    
    let button = CustomButton(bgColor: buttonBgColor, titleColor: .white, text: "Go to Second Screen")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = applicationBgColor
        setupView()
        
    }
    
    private func setupView() {
        view.addSubview(button)
        button.addTarget(self, action: #selector(onButtonPress), for: .touchUpInside)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 250),
            button.heightAnchor.constraint(equalToConstant: 60)
            
        ])
    }
    
    @objc private func onButtonPress() {
        coordinator?.showSingleTaskScreen()
    }
}
