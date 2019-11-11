//
//  ViewController.swift
//  RequiredInitTableViewApp
//
//  Created by Apple on 11/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ints = [1, 2, 3]
    override var title: String? = "Williams"
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
        // make tableview show up on screen
        setupUI() //  P1 P1
        // pinned to edges
    }
    
    func setupUI() {
        view.addSubview(tableView)
        view.addConstraints([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

//sextension ViewController: view

