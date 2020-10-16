//
//  WebService.swift
//  GoodNews
//
//  Created by Riad Mohamed on 10/16/20.
//

import Foundation

class WebService {
    func getArticles(url: URL, completionHandler: @escaping ([Any]?) ->()) {
        
        URLSession.shared.dataTask(with: url) { (data, respone, error) in
            if let error = error {
                print(error.localizedDescription)
                completionHandler(nil)
            } else if let safeData = data {
                print(safeData)
            }
        }.resume()
        
    }
}
