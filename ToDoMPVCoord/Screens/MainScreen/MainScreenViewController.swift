//
//  MainScreenViewController.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 01.02.2024.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    var onButtonTapped: (() -> Void)?
    
    let button: UIButton = {
        let button = UIButton(configuration: .plain())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .orange
        button.setTitle("Go To Sengle task Screen", for: .normal)
        button.setTitleColor(UIColor(white: 1, alpha: 0.3), for: .highlighted)
        button.tintColor = .black
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
        self.view.backgroundColor = .blue
        self.setupView()
        
    }
    
    private func setupView() {
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(onButtonPress), for: .touchUpInside)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 250),
            button.heightAnchor.constraint(equalToConstant: 60)
            
        ])
    }
    
    @objc private func onButtonPress() {
        print("Button was pressed")
        onButtonTapped?()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
