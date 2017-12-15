//
//  AvatarTranslator.swift
//  CatOnCould
//
//  Created by Yang Yi  on 08/12/2017.
//  Copyright © 2017 Yang Yi . All rights reserved.
//

import Foundation
import UIKit

class CatTranslator {
    func translate(data: Data) -> [CatModel]? {
        guard let dataJson = try? JSONSerialization.jsonObject(with: data, options: []) else {return nil}
        guard let dict = dataJson as? [String: Any] else {return nil}
        if let moments = dict["moments"] as? [[String: Any]] {
            return moments.map{moment in CatModel.init(data: moment)}
        } else {
            return nil
        }
    }
}
