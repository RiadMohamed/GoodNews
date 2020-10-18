//
//  Article.swift
//  GoodNews
//
//  Created by Riad Mohamed on 10/16/20.
//

import Foundation

struct ArticleList: Decodable {
    var articles: [Article]
}


struct Article: Decodable {
    var title: String
    var description: String
}
