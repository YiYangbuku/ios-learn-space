//
//  CatViewModel.swift
//  CatOnCould
//
//  Created by Yang Yi  on 25/10/2017.
//  Copyright © 2017 Yang Yi . All rights reserved.
//

import Foundation

let cellModel = CatModel(cat: "abc", color: "asf", kind: "xiaobai")

let mockModels = [cellModel, cellModel]
class CatViewModel {
    
    var homeModel: [CatModel] = mockModels
    
    var count: Int {
        get {
            return homeModel.count
        }
    }
}
