//
//  Coordinator.swift
//  ToDoMPVCoord
//
//  Created by Alexey Manankov on 01.02.2024.
//

import UIKit

final class Coordinator {
    
    private let rootViewController = UINavigationController()
    private let josin = "Josin"
    
    init(in window: UIWindow) {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
    
    func start() {
        ShowTasksScreen()
    }
    
    //MARK: Private implenemtation
    private func ShowTasksScreen() {
        let mainScreen = MainScreenViewController()
        mainScreen.onButtonTapped = { [self] in
            self.ShowSingleTaskScreen()
        }
        rootViewController.pushViewController(mainScreen, animated: true)
    }
    
    private func ShowSingleTaskScreen() {
        print("ShowSingleTaskScreen was run to push")
        let singleTaskScreen = SingleTaskScreenViewController()
        singleTaskScreen.onButtonBackTapped = { [self] in
            _ = self.rootViewController.popViewController(animated: true)
        }
        rootViewController.pushViewController(singleTaskScreen, animated: true)
    }
    
}
