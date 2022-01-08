//
//  MessageViewController.swift
//  Chat
//
//  Created by Jose Alarcon Chacon on 1/6/22.
//

import UIKit

class MessageViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendMessagePressed(_ sender: UIButton) {
    }
}
