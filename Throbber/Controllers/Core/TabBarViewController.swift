//
//  TabBarViewController.swift
//  Throbber
//
//  Created by Adnan Joraid on 2022-10-31.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeVC = HomeViewController()
        let searchVC = SearchViewController()
        let notificationVC = NotificationViewController()
        let messageVC = MessageViewController()
        
        let homeNC = UINavigationController(rootViewController: homeVC)
        let searchNC = UINavigationController(rootViewController: searchVC)
        let notificationNC = UINavigationController(rootViewController: notificationVC)
        let messageNC = UINavigationController(rootViewController: messageVC)
        
        homeNC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "house"), tag: 1)
        searchNC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "magnifyingglass"), tag: 2)
        notificationNC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "bell"), tag: 3)
        messageNC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "envelope"), tag: 4)
        
        self.setViewControllers([homeNC, searchNC, notificationNC, messageNC], animated: false)


    }
}
