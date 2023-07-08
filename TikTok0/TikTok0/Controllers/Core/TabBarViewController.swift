//
//  TabBarViewController.swift
//  TikTok0
//
//  Created by Rj O'Neal on 7/8/23.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpViewControllers()
    }
    
    private func setUpViewControllers()
    {
        let home = HomeViewController()
        let explore = ExploreViewController()
        let notifications = NotificationsViewController()
        let profile = ProfileViewController()
        let camera = CameraViewController()
        
        home.title = "Home"
        explore.title = "Explore"
        notifications.title = "Notifications"
        profile.title = "Profile"
        
        
        let navHome = UINavigationController(rootViewController: home)
        let navExplore = UINavigationController(rootViewController: explore)
        let navNotifications = UINavigationController(rootViewController: notifications)
        let navProfile = UINavigationController(rootViewController: profile)
        
        navHome.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "house"), tag: 1)
        navExplore.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "magnifyingglass"), tag: 2)
        camera.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "camera"), tag: 3)
        navNotifications.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "bell"), tag: 4)
        navProfile.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "person.circle"), tag: 5)
        
        let viewControllers = [navHome, navExplore, camera, navNotifications, navProfile]
        
        self.setViewControllers(viewControllers, animated: false)
    }
    
    

}
