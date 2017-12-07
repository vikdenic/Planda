//
//  SettingsTableViewController.swift
//  Planda
//
//  Created by Vik Denic on 12/7/17.
//  Copyright © 2017 nekturlabs. All rights reserved.
//

import UIKit
import FirebaseAuth

class SettingsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        do {
            try Auth.auth().signOut()
            let authVC = UIViewController.storyboardInstance(storyboardId: K.Storyboard.Auth, restorationId: AuthViewController.className())
            self.present(authVC, animated: true, completion: nil)
            self.navigationController?.popToRootViewController(animated: true)
            print ("Logged out")
        } catch let error as NSError {
            self.showAlert(fromError: error)
            print ("Error signing out: %@", error)
        }
    }
    
    
}
