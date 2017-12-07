//
//  MainTabBarController.swift
//  Planda
//
//  Created by Vik Denic on 11/28/17.
//  Copyright © 2017 nekturlabs. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let authVC = UIViewController.storyboardInstance(storyboardId: K.Storyboard.Auth, restorationId: AuthViewController.className())
        self.present(authVC, animated: true, completion: nil)
    }

}
