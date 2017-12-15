//
//  CatCellViewModel.swift
//  CatOnCould
//
//  Created by Yang Yi  on 05/12/2017.
//  Copyright © 2017 Yang Yi . All rights reserved.
//

import Foundation

class CatCellViewModel {
    var cat: CatModel
    
    init(cat: CatModel) {
        self.cat = cat
    }
    
    func getCat() -> CatModel {
        return self.cat
    }
    
}
