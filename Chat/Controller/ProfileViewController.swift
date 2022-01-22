//
//  ProfileViewController.swift
//  Chat
//
//  Created by Jose Alarcon Chacon on 1/21/22.
//

import UIKit
import Firebase

class ProfileViewController: UIViewController {

    @IBOutlet weak var signOutButton: UIButton!
    @IBOutlet weak var userImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        signOutButton.layer.cornerRadius = 25.0
    }
    @IBAction func signOutPressed(_ sender: UIButton) {
        signOut()
    }
}

extension ProfileViewController {
    func signOut() {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let sigOutError as NSError {
            print("Error Signing Out: %@", sigOutError)
        }
    }
}
