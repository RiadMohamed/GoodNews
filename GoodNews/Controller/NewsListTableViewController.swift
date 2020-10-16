//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Riad Mohamed on 10/15/20.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=0543744ef575416fa4abe3521910a64b")!
        
        WebService().getArticles(url: url) { _ in
            
        }
        
    }
}
