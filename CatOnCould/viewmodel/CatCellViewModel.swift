//
//  HomeCellViewModel.swift
//  CatOnCould
//
//  Created by Yang Yi  on 25/10/2017.
//  Copyright © 2017 Yang Yi . All rights reserved.
//

import Foundation

class CatCellViewModel {
    var model: CatCellViewModel
    
    init(model: CatCellViewModel) {
        self.model = model
    }
    
    var count: Int {
        get {
            return 5
        }
    }
}
