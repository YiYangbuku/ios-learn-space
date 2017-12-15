//
//  ViewController.swift
//  CatOnCould
//
//  Created by Yang Yi  on 11/10/2017.
//  Copyright © 2017 Yang Yi . All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var textFieldUsername: UITextField!
    
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var textFieldMessage: UILabel!
    
    private let loginService = LoginService()
    
    private let viewModel = MainScreenViewModel()
    
    @IBAction func loginTouch(_ sender: Any) {
        let username = textFieldUsername.text!
        let password = textFieldPassword.text!
        let str = formatStr(username: username, password: password)
        
        let credential = LoginCredential(username: username, password: password)
        loginService.performLogin(credential: credential, success: loginSuccess, failure: loginFailure)
        
        print(str)
   
    }
    
    private func loginSuccess(loginKey: LoginKey){
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "loginSuccessSegue", sender: nil)
        }
//        dismiss(animated: true, completion: nil )
    }
    
    private func loginFailure(error: LoginError){
        viewModel.loginError = error
        DispatchQueue.main.async {
            self.textFieldMessage.text = self.viewModel.loginErrorMessage
        }
        
    }
    
    private func formatStr(username: String, password: String) -> String {
        return "login: \(username), \(password)"
    }
    
    enum cat:String {
        case catId
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    override func viewDidLoad() {
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
    }
    
}

