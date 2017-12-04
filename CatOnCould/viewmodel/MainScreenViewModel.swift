//
//  MainScreenViewModel.swift
//  CatOnCould
//
//  Created by Yang Yi  on 01/11/2017.
//  Copyright © 2017 Yang Yi . All rights reserved.
//

import Foundation

class MainScreenViewModel {
    var loginError: LoginError?
    
    var loginErrorMessage: String? {
        return loginError?.message
    }
    
}
