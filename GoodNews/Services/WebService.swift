//
//  WebService.swift
//  GoodNews
//
//  Created by Riad Mohamed on 10/16/20.
//

import Foundation

class WebService {
    func getArticles(url: URL, completionHandler: @escaping ([Article]?) ->()) {
        
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!.localizedDescription)
                completionHandler(nil)
            }
            if let safeData = data {
                do {
                    let safeArticleList = try JSONDecoder().decode(ArticleList.self, from: safeData)
                    completionHandler(safeArticleList.articles)
                } catch let error {
                    print(error.localizedDescription)
                    completionHandler(nil)
                }
            }
        }
        task.resume()
    }
}
