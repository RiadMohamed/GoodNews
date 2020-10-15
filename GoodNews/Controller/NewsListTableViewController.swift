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
    }
}
