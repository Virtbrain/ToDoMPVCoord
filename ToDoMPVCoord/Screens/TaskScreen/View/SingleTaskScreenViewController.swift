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
    
    let taskTitle = CustomLabel(text: "Дописать приложение", fontSize: 20, fontColor: titleColor)
    let taskDescription = CustomLabel(text: "Дописать приложение ToDoList на MVP  с использованием Coordinator", fontSize: 20)
    
    let paramsStackView = UIStackView()
    let stateStatus = StateStatusView()
    let priorityStatus = PriorityStatusView()
    
    let datesStackView = DatesVStackView(openDate: "04.04.2024/15:05", closeDate: "04.04.2024/17:00")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = applicationBgColor
        setupView()
    }
    
    private func setupView() {
//        setupDates()
        view.addSubview(taskTitle)
        view.addSubview(datesStackView)
        datesStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(taskDescription)
        view.addSubview(paramsStackView)
        paramsStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //Title
            taskTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            taskTitle.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            taskTitle.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            taskTitle.heightAnchor.constraint(equalToConstant: 30),
            //Dates
            datesStackView.topAnchor.constraint(equalTo: taskTitle.bottomAnchor, constant: 40),
            datesStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            datesStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 20),
            datesStackView.heightAnchor.constraint(equalToConstant: 70),
            //Description
            taskDescription.topAnchor.constraint(equalTo: datesStackView.bottomAnchor, constant: 20),
            taskDescription.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            taskDescription.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            taskDescription.heightAnchor.constraint(equalToConstant: 50),
            //Status && params
            paramsStackView.topAnchor.constraint(equalTo: taskDescription.bottomAnchor, constant: 20),
            paramsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            paramsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 20),
            paramsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 20)
        ])
    }
    
//    private func setupDates() {
//        datesStackView.addArrangedSubview(openDate)
//        datesStackView.addArrangedSubview(closeDate)
//        datesStackView.axis = .horizontal
//        datesStackView.alignment = .top
//    }
    
    private func setupParams() {
        paramsStackView.addArrangedSubview(stateStatus)
        datesStackView.addArrangedSubview(priorityStatus)
        datesStackView.axis = .horizontal
        datesStackView.alignment = .top
    }
//
//    private func setupParams(){
//        let stackView = UIStackView()
//        stackView.addArrangedSubview(state)
//        stackView.addArrangedSubview(priority)
//        stackView.axis = .horizontal
//        stackView.alignment = .top
//    }
}
