//
//  ArticleListViewModel.swift
//  GoodNews
//
//  Created by Riad Mohamed on 10/19/20.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
    var numberOfSections: Int {
        return 1
    }
    var numberOfRows: Int {
        return self.articles.count
    }
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}
