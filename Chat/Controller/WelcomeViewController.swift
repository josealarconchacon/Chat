//
//  ViewController.swift
//  Chat
//
//  Created by Jose Alarcon Chacon on 1/6/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animateWelcomeText()
    }
}

extension WelcomeViewController {
    func animateWelcomeText() {
        titleLabel.text = ""
        var charaterIndex = 0.0
        let titleText = "💬 Welcome to Chat"
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charaterIndex, repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            charaterIndex += 1
        }
    }
}

