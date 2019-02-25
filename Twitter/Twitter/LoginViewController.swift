//
//  LoginViewController.swift
//  Twitter
//
//  Created by Wiliam Kwon on 2/24/19.
//  Copyright © 2019 Wiliam Kwon. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLoginButton(_ sender: Any) {
        let myUrl = "https://api.twitter.com/oauth/request_token"
    TwitterAPICaller.client?.login(url: myUrl ,success:{performSegue(withIdentifier: "loginToHome", sender: self)},failure: (Error) in print ("Cound Not Login")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
