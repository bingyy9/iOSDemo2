//
//  AppDelegate.swift
//  iOSDemo2
//
//  Created by bingy on 1/18/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let controller = ViewController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.rootViewController = UINavigationController(rootViewController: controller)
        window!.makeKeyAndVisible()
        
        return true
    }
    
}

