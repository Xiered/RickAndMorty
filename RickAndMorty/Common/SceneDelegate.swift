//
//  SceneDelegate.swift
//  RickAndMorty
//
//  Created by Дмитрий Герасимов on 28.06.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let splashVC = SplashScreenViewController()
        
        window.rootViewController = splashVC
        window.makeKeyAndVisible()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            let tabBarController = TabBarController()
            window.rootViewController = tabBarController
        }
        self.window = window
    }

}
