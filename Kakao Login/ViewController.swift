//
//  ViewController.swift
//  Kakao Login
//
//  Created by 김유진 on 2021/01/23.
//

import UIKit
import KakaoSDKAuth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    @IBAction func onKakaoLoginByAppTouched(_ sender: Any) {
        AuthApi.shared.loginWithKakaoAccount {(oauthToken, error) in
           if let error = error {
             print(error)
           }
           else {
            print("loginWithKakaoAccount() success.")
            
            //do something
            _ = oauthToken
           }
        }
    }
}

