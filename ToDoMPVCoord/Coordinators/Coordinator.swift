//
//  Coordinator.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 01.02.2024.
//

import UIKit

final class Coordinator {
    
    private let rootViewController = UINavigationController()
    
    init(in window: UIWindow) {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
    
    func start() {
        let mainScreen = MainScreenViewController()
        mainScreen.coordinator = self
        rootViewController.pushViewController(mainScreen, animated: true)
    }
     
    func showSingleTaskScreen() {
        let singleTaskScreen = SingleTaskScreenViewController()
        singleTaskScreen.coordinator = self
        singleTaskScreen.presenter = SingleTaskPresenter()
        rootViewController.pushViewController(singleTaskScreen, animated: true)
    }
    
    func showTasksScreenBack() {
        _ = self.rootViewController.popViewController(animated: true)
    }
    
}
