//
//  CatModel.swift
//  CatOnCould
//
//  Created by Yang Yi  on 25/10/2017.
//  Copyright © 2017 Yang Yi . All rights reserved.
//

import Foundation
import UIKit

class CatModel{
    var id: String?
    var cat: String?
    var avatar: String?
    var message: String?
    var thumbs: [String]?
    
    init(data: [String: Any]) {
        id = data["id"] as? String
        cat = data["cat"] as? String
        var avatarImage = data["avatar"] as? [String: String]
        avatar = avatarImage?["image"]
        message = data["message"] as? String
        
        
        if let thumbsImages = data["thumbs"] as? [[String: String]] {
            thumbs = []
            for thumbsImage in thumbsImages {
                thumbs!.append(thumbsImage["image"]!)
            }
        }
    }
}
