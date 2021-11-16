//
//  AppDelegate.swift
//  ListApp
//
//  Created by Mark Chen on 2021/11/15.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = ListViewController()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()

        return true
    }

}
