//
//  ViewController.swift
//  Voximplant Demo
//
//  Created by Mohammed Salah on 15/04/2020.
//  Copyright © 2020 MSalah. All rights reserved.
//

import UIKit
import CallKit

class ViewController: UIViewController , CXProviderDelegate{
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    func providerDidReset(_ provider: CXProvider) {
    }

    func provider(_ provider: CXProvider, perform action: CXAnswerCallAction) {
        action.fulfill()
    }

    func provider(_ provider: CXProvider, perform action: CXEndCallAction) {
        action.fulfill()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let provider = CXProvider(configuration: CXProviderConfiguration(localizedName: "My App"))
//            provider.setDelegate(self, queue: nil)
//            let update = CXCallUpdate()
//            update.remoteHandle = CXHandle(type: .generic, value: "Pete Za")
//            provider.reportNewIncomingCall(with: UUID(), update: update, completion: { error in })
        
    }
    
    @IBAction func didPressLogin(_ sender: UIButton) {
//        AppDelegate.callsManager.login(userName: userNameTF.text ?? "",
//                                       password: passwordTF.text ?? "") { [unowned self] (userName, isLoggedin) in
//                                        if isLoggedin {
//                                            let  vc = self.storyboard?.instantiateViewController(withIdentifier: "calls") as? CallsViewController
//                                            self.navigationController?.pushViewController(vc!, animated: true)
//                                        } else {
//                                            self.showErrorMessage(title: "Error", message: userName ?? "")
//                                        }
//        }
    }
}


extension UIViewController {
    func showErrorMessage(title: String, message: String, customAction: UIAlertAction? = nil, handler: ((UIAlertAction) -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        if let action = customAction {
            alert.addAction(action)
        } else {
            let action = UIAlertAction(title: "OK", style: .cancel, handler: handler)
            alert.addAction(action)
        }
        present(alert, animated: true, completion: nil)
    }
}
