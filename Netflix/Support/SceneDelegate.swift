//
//  SceneDelegate.swift
//  Netflix
//
//  Created by mehdimagerramov on 08.02.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = setTabBar()
        window?.makeKeyAndVisible()
    }
    
    func setTabBar() -> UITabBarController {
        
        let tabbar = UITabBarController()
        
        let vc1 = homeVC()
        let vc2 = upcomingVC()
        let vc3 = searchVC()
        let vc4 = downloadsVC()
        
        vc1.title = "Home"
        vc2.title = "Upcoming"
        vc3.title = "Search"
        vc4.title = "Downloads"
        
        vc1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "play.house.fill"), tag: 1)
        vc2.tabBarItem = UITabBarItem(title: "New", image: UIImage(systemName: "play.square.fill"), tag: 1)
        vc3.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        vc4.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)
        
        
        tabbar.viewControllers = [
            UINavigationController(rootViewController: vc1),
            UINavigationController(rootViewController: vc2),
            UINavigationController(rootViewController: vc3),
            UINavigationController(rootViewController: vc4)
        ]
        
        return tabbar
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

