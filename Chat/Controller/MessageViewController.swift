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
    
    // db reference
    let dataBase = Firestore.firestore()
    
    var messages: [Message] = [
        Message(sender: "test@.com", body: "Hey!"),
        Message(sender: "a@.com", body: "What up?"),
        Message(sender: "test@.com", body: "How are you?")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        title = Constants.appName
        navigationItem.hidesBackButton = true
        registerNibFile()
    }
    
    func registerNibFile() {
        tableView.register(UINib(nibName: Constants.cellNibName, bundle: nil), forCellReuseIdentifier: Constants.cellIdentifier)
    }
    
    @IBAction func sendMessagePressed(_ sender: UIButton) {
        if let messageBody = messageTextfield.text, // // store the message body
            let messageSender = Auth.auth().currentUser?.email { // // get hold of the sender, current user
            dataBase.collection(Constants.FireStore.collectionName).addDocument(data: [
                Constants.FireStore.senderField: messageSender,
                Constants.FireStore.bodyField: messageBody]) { error in
                    if let error = error {
                        print("There were an issue saving data to firestore \(error.localizedDescription)")
                    } else {
                        print("Data was saved successfully")
                    }
                }
         }
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

extension MessageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier, for: indexPath) as! MessageCell
        cell.label.text = messages[indexPath.row].body
        return cell
    }
}
