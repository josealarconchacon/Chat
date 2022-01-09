//
//  MessageViewController.swift
//  Chat
//
//  Created by Jose Alarcon Chacon on 1/6/22.
//

import UIKit
import Firebase

class MessageViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Chat App"
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func sendMessagePressed(_ sender: UIButton) {
    }
    @IBAction func logOutButtonPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let sigOutError as NSError {
            print("Error Signing Out: %@", sigOutError)
        }
    }
}
