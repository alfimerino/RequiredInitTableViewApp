//
//  ViewController.swift
//  RequiredInitTableViewApp
//
//  Created by Apple on 11/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 80
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
    return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

