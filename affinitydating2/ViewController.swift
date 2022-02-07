//
//  ViewController.swift
//  affinitydating2
//
//  Created by Jia Ning Tjong on 7/2/22.
//

import UIKit
import CometChatPro

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let uid    = "SUPERHERO1"
        let authKey = "a3a0cdbf61a24f8b429c070ba52fe1f1603ee38a"
        CometChat.login(UID: uid, apiKey: authKey, onSuccess: { (user) in
          print("Login successful: " + user.stringValue())
            self.openChat()
            
        }) { (error) in
          print("Login failed with error: " + error.errorDescription);
        }
    }
    func openChat(){
        DispatchQueue.main.async {
            let cometChatUI = CometChatUI()
            cometChatUI.setup(withStyle: .fullScreen)
            self.present(cometChatUI, animated: true, completion: nil)
        }
    }

}

