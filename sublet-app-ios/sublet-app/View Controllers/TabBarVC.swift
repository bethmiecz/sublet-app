//
//  TabBarVC.swift
//  sublet-app
//
//  Created by Beth Mieczkowski on 5/5/20.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let search = SearchVC()
        search.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        let help = HelpVC()
        help.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
        let messaging = MessagingVC()
        messaging.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
        
        let profile = ProfileVC()
        profile.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 3)
        
        viewControllers = [search, help, messaging, profile]
        
    }
    

}
