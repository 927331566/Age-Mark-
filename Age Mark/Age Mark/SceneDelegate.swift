//
//  SceneDelegate.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        
        let tabBar: UITabBarController = UITabBarController()
        let v1: ViewController = ViewController()
        v1.tabBarItem.selectedImage = UIImage(named: "Home")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        v1.tabBarItem.image = UIImage(named: "Home_副本2")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        //v1.view.backgroundColor = UIColor.red
        //v1.title = "主页"
        let v2: SearchViewController = SearchViewController()
        v2.tabBarItem.selectedImage = UIImage(named: "Category 2")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        v2.tabBarItem.image = UIImage(named: "Category")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
       // v2.view.backgroundColor = UIColor.blue
        //v2.title = "广场"
        let v3: ScanViewController = ScanViewController()
        v3.tabBarItem.image = UIImage(named: "Frame 427319634")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        //v3.view.backgroundColor = UIColor.green
        //v3.title = "扫描"
        let v4: RoundViewController = RoundViewController()
        v4.tabBarItem.selectedImage = UIImage(named: "Chart_副本")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        v4.tabBarItem.image = UIImage(named: "Chart")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        //v4.view.backgroundColor = UIColor.gray
        //v4.title = "社区"
        let v5: MyViewController = MyViewController()
        v5.tabBarItem.selectedImage = UIImage(named: "Profile-Active_副本")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        v5.tabBarItem.image = UIImage(named: "Profile_副本")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        //v5.view.backgroundColor = UIColor.brown
        //v5.title = "我的"
        tabBar.viewControllers = [v1, v2, v3, v4, v5]
        tabBar.tabBar.backgroundColor = UIColor.white
        self.window?.rootViewController = tabBar
        
        guard let _ = (scene as? UIWindowScene) else { return }
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

        // Save changes in the application's managed object context when the application transitions to the background.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }


}

