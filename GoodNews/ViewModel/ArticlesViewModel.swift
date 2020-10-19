//
//  ArticlesViewModel.swift
//  GoodNews
//
//  Created by Riad Mohamed on 10/19/20.
//

import Foundation

struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}
