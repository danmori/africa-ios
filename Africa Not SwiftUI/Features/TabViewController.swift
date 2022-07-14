//
//  TabViewController.swift
//  Africa Not SwiftUI
//
//  Created by Dan Mori on 13/07/22.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tabBar.backgroundColor = .black
        
        let tabOne = HomeViewController()
        let tabOneBarItem = UITabBarItem(title: "Browser", image: UIImage(systemName: "square.grid.2x2"), selectedImage: UIImage(systemName: "square.grid.2x2.fill"))
        tabOne.tabBarItem = tabOneBarItem
        
        let tabTwo = VideoListViewController()
        let tabTwoBarItem = UITabBarItem(title: "Watch", image: UIImage(systemName: "play.rectangle"), selectedImage: UIImage(systemName: "play.rectangle.fill"))
        tabTwo.tabBarItem = tabTwoBarItem
        
        let tabThree = MapViewController()
        let tabThreeBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "map"), selectedImage: UIImage(systemName: "map.fill"))
        tabThree.tabBarItem = tabThreeBarItem
        
        let tabFour = GalleryViewController()
        let tabFourBarItem = UITabBarItem(title: "Gallery", image: UIImage(systemName: "photo"), selectedImage: UIImage(systemName: "photo.fill"))
        tabFour.tabBarItem = tabFourBarItem
        
        self.viewControllers = [tabOne, tabTwo, tabThree, tabFour]
    }
}

extension TabViewController: UITabBarControllerDelegate {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
    }
}
