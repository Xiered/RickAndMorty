//
//  TabBarController.swift
//  RickAndMorty
//
//  Created by Дмитрий Герасимов on 28.06.2024.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTabBar()
    }
    
    private func makeTabBar() {
        tabBar.backgroundColor = .white
        tabBar.tintColor = .blue
        
        let mainVC = MainViewController()
        let favoriteVC = FavoriteViewController()
        
        mainVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "house"), selectedImage: nil)
        favoriteVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "heart"), selectedImage: nil)
                        
        self.viewControllers = [mainVC, favoriteVC]
        }

}
