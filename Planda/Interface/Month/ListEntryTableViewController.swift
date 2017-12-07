//
//  ListEntryTableViewController.swift
//  Planda
//
//  Created by Vik Denic on 11/30/17.
//  Copyright © 2017 nekturlabs. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ListEntryTableViewController: UITableViewController {
    
    var ref = Database.database().reference()
    
    @IBOutlet var allTextFields: [UITextField]!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
    @IBOutlet weak var fourthTextField: UITextField!
    @IBOutlet weak var fifthTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstTextField.becomeFirstResponder()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Goals"
    }

    //MARK: Actions
    @IBAction func onSaveTapped(_ sender: UIBarButtonItem) {
        let key = ref.child("posts").childByAutoId().key
        let post = ["uid": "testUID",
                    "author": "testName",
                    "title": "test title",
                    "body": "test body"]
        let childUpdates = ["/posts/\(key)": post,
                            "/user-posts/\("testUID")/\(key)/": post]
        ref.updateChildValues(childUpdates)
    }

}
