//
//  ArticlesViewModel.swift
//  GoodNews
//
//  Created by Riad Mohamed on 10/19/20.
//

import Foundation

struct ArticleViewModel {
    private let article: Article
    var title: String {
        return self.article.title
    }
    var description: String {
        return self.article.description
    }
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}
