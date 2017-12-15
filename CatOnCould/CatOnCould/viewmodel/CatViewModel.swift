//
//  CatViewModel.swift
//  CatOnCould
//
//  Created by Yang Yi  on 25/10/2017.
//  Copyright © 2017 Yang Yi . All rights reserved.
//

import Foundation

//let cellModel = CatModel(id: "", cat: "Kitty", avatar: #imageLiteral(resourceName: "avatar1"), message: "this is a nice cat", thumbs: [#imageLiteral(resourceName: "avatar1")])

//let mockModels = [cellModel, cellModel]
class CatViewModel {
    
    var catModel: [CatModel] = []
    
    func setCats(catModels: [CatModel]) -> Void {
        catModel = catModels
    }
    
    
    var count: Int {
        get {
            return catModel.count
        }
    }
    
    func getCatCell(index: Int) -> CatCellViewModel {
        
        return CatCellViewModel(cat: catModel[index])
    }
}
