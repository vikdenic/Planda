//
//  MonthTableViewController.swift
//  Planda
//
//  Created by Vik Denic on 11/29/17.
//  Copyright © 2017 nekturlabs. All rights reserved.
//

import UIKit

class MonthTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = Date().toMonthYearString()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Plan"
        case 3: return "Review"
        default: return nil
        }
    }

    @IBAction func onLeftBarButtonTapped(_ sender: UIBarButtonItem) {
        
    }

}
