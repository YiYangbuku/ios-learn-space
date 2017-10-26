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
    
    @IBAction func loginTouch(_ sender: Any) {
        let username = textFieldUsername.text!
        let password = textFieldPassword.text!
        let str = formatStr(username: username, password: password)
        print(str)
        
//        performSegue(withIdentifier: cat.catId.rawValue, sender: nil)
//        present(CatViewController(), animated: true, completion: nil)
        navigationController?.pushViewController(CatViewController(), animated: true)
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

