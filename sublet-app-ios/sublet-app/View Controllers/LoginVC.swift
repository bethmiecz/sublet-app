//
//  LoginVC.swift
//  sublet-app
//
//  Created by Beth Mieczkowski on 5/5/20.
//

import UIKit
import GoogleSignIn
import SnapKit

class LoginVC: UIViewController {
    
    var googleSignInButton: GIDSignInButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(didSignIn), name: NSNotification.Name("SuccessfulSignInNotification"), object: nil)
        
        view.backgroundColor = .white
        
        GIDSignIn.sharedInstance().presentingViewController = self
        
        // Automatically restore the previous Google user session
        GIDSignIn.sharedInstance().restorePreviousSignIn()
        
        googleSignInButton = GIDSignInButton()
        googleSignInButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(googleSignInButton)
        
        setUpConstraints()
        
    }
    
    func setUpConstraints() {
        googleSignInButton.snp.makeConstraints { (make) -> Void in
            make.centerX.equalTo(self.view)
            make.width.equalTo(100)
            make.height.equalTo(50)
            make.centerY.equalTo(self.view)
        }
    }
    
    @objc func didSignIn()  {
      navigationController?.pushViewController(TabBarVC(), animated: true)
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

}
