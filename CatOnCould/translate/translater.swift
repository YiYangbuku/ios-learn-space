//
//  translater.swift
//  CatOnCould
//
//  Created by Yang Yi  on 01/11/2017.
//  Copyright © 2017 Yang Yi . All rights reserved.
//

import Foundation

class Translater {
    func translate(credential: LoginCredential) -> Data {
        let dict = [
            "username": credential.username,
            "password": credential.password,
        ]
        return try! JSONSerialization.data(withJSONObject: dict, options: [])
    }
}
