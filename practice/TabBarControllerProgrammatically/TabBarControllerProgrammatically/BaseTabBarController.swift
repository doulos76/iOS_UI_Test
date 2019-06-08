//
//  BaseTabBarController.swift
//  TabBarControllerProgrammatically
//
//  Created by dave76 on 08/06/2019.
//  Copyright © 2019 dave76. All rights reserved.
//

import UIKit

struct CustomViewController {
  let title: String
  let image: UIImage
  let viewController: UIViewController
}

class BaseTabBarController: UITabBarController {
  
  var customViewControllers: [CustomViewController] = [
    CustomViewController(title: "Today", image: #imageLiteral(resourceName: "app"), viewController: UIViewController()),
    CustomViewController(title: "Game", image: #imageLiteral(resourceName: "start-up"), viewController: UIViewController()),
    CustomViewController(title: "Apps", image: #imageLiteral(resourceName: "app"), viewController: UIViewController()),
    CustomViewController(title: "Update", image: #imageLiteral(resourceName: "icon"), viewController: UIViewController()),
    CustomViewController(title: "Search", image: #imageLiteral(resourceName: "search"), viewController: UIViewController()),
  ]

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    viewControllers = customViewControllers.map { createNavController(viewController: $0.viewController, title: $0.title, image: $0.image) }
  }
  
  func createNavController(viewController: UIViewController, title: String, image: UIImage) -> UIViewController {
    let navController = UINavigationController(rootViewController: viewController)
    viewController.navigationItem.title = title
    navController.tabBarItem.title = title
    navController.tabBarItem.image = image
    navController.navigationBar.prefersLargeTitles = true
    return navController
  }
  
  
}
