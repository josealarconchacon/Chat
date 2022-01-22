//
//  ProfileViewController.swift
//  Chat
//
//  Created by Jose Alarcon Chacon on 1/21/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var signOutButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        signOutButton.layer.cornerRadius = 25.0
    }
    @IBAction func signOutPressed(_ sender: UIButton) {
    }
}
