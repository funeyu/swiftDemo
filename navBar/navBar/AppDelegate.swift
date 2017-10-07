//
//  AppDelegate.swift
//  navBar
//
//  Created by fuheyu on 2017/10/7.
//  Copyright © 2017年 fuheyu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        // 设置底色
        self.window!.backgroundColor = UIColor.white
        
        let tabBar = UITabBarController()
        tabBar.tabBar.backgroundColor = UIColor.clear
        
        let mainViewController = ViewController()
        mainViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 100)
        
        let articleViewController = ArticleViewController()
        articleViewController.tabBarItem = UITabBarItem(title: "文章", image: UIImage(named: "article"), selectedImage: UIImage(named: "article-selected"))
        articleViewController.tabBarItem.title = "文章"
        
        let introViewController = IntroViewController()
        introViewController.tabBarItem = UITabBarItem(title: "简介", image: UIImage(named: "intro"), selectedImage: UIImage(named: "intro-selected"))
        introViewController.tabBarItem.title = "简介"
        
        let settingViewController = SettingViewController()
        settingViewController.tabBarItem = UITabBarItem(title: "设置", image: UIImage(named: "setting"), selectedImage: UIImage(named: "setting-selected"))
        settingViewController.tabBarItem.title = "设置"
        
        tabBar.viewControllers = [articleViewController, introViewController, settingViewController]
        tabBar.selectedIndex = 2
        self.window!.rootViewController = tabBar
        self.window!.makeKeyAndVisible()
        return true
    }

}

