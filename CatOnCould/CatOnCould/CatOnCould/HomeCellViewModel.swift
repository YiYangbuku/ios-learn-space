//
//  HomeCellViewModel.swift
//  CatOnCould
//
//  Created by Yang Yi  on 25/10/2017.
//  Copyright © 2017 Yang Yi . All rights reserved.
//

import Foundation

class HomeCellViewModel {
    var model: HomeCellViewModel
    
    init(model: HomeCellViewModel) {
        self.model = model
    }
    
    var count: Int {
        get {
            return 5
        }
    }
}
