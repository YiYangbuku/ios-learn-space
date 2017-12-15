//
//  LoginService.swift
//  CatOnCould
//
//  Created by Yang Yi  on 01/11/2017.
//  Copyright © 2017 Yang Yi . All rights reserved.
//

import Foundation

class LoginService {
    
    private let urlSeesionConfiguration = URLSessionConfiguration.default
    private let urlLogin = URL(string: "http://localhost:8080/catnip/login/")!.absoluteURL
    private let translator = Translater()
    private let loginKeyTranslator = LoginKeyTranslator()
    
    func performLogin(credential: LoginCredential, success: @escaping (LoginKey) -> Void, failure: @escaping (LoginError) -> Void) {
        let session = URLSession(configuration: urlSeesionConfiguration)
        var request = URLRequest(url: urlLogin)
        request.httpMethod="POST"
        request.httpBody = translator.translate(credential: credential)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = session.dataTask(with: request) {(data, response, error) in
            if let key = data.flatMap(self.loginKeyTranslator.translate) {
                success(key)
            } else {
                let err = LoginError(message: "xx")
                failure(err)
            }
        
        }
        task.resume()
    }
    
}
