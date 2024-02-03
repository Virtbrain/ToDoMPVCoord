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
        print("ShowSingleTaskScreen was run to push")
        let singleTaskScreen = SingleTaskScreenViewController()
        singleTaskScreen.coordinator = self
        rootViewController.pushViewController(singleTaskScreen, animated: true)
    }
    
    func showTasksScreenBack() {
        print("ShowTasksScreen")
        _ = self.rootViewController.popViewController(animated: true)
    }
    
}
