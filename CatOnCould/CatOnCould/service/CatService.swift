//
//  CatService.swift
//  CatOnCould
//
//  Created by Yang Yi  on 08/12/2017.
//  Copyright © 2017 Yang Yi . All rights reserved.
//

import Foundation

class CatService {
    
    private let urlSeesionConfiguration = URLSessionConfiguration.default
    private let urlAvatar = URL(string: "http://localhost:8080/catnip/appearance/")!.absoluteURL
    private let urlPhoto = URL(string: "http://localhost:8080/catnip/moment/")!.absoluteURL

    private let translator = Translater()
    private let catTranslator = CatTranslator()
    
    func retrieveCats(success: @escaping ([CatModel]) -> Void, failure: @escaping (LoginError) -> Void) {
        let session = URLSession(configuration: urlSeesionConfiguration)
        var request = URLRequest(url: urlPhoto)
        request.httpMethod="GET"
        request.httpBody = Data()
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = session.dataTask(with: request) {(data, response, error) in
            if let cats = data.flatMap(self.catTranslator.translate) {
                success(cats)
            } else {
                let err = LoginError(message: "cannot get cats")
                failure(err)
            }
            
        }
        task.resume()
    }
    
}
