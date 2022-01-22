//
//  ViewController.swift
//  Chat
//
//  Created by Jose Alarcon Chacon on 1/6/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var createAccountButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animateWelcomeText()
        buttonUI()
    }
}

extension WelcomeViewController {
    func animateWelcomeText() {
        titleLabel.text = ""
        var charaterIndex = 0.0
        let titleText = Constants.appName
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charaterIndex, repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            charaterIndex += 1
        }
    }
    
    func buttonUI() {
        createAccountButton.layer.cornerRadius = 25.0
        loginButton.layer.cornerRadius = 25.0
    }
}

