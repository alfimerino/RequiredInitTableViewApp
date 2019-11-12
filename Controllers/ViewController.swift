//
//  ViewController.swift
//  RequiredInitTableViewApp
//
//  Created by Apple on 11/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

// create a class, called ModelController
// declare an array of ints (declared is not the same thing as initialize)
// create a required init:  required init?(dataSource: [Int] = []) {
//      code
//   }

// create 2 functions:
// numberOfElements that returns an int (size of dataSource)
// number(at:) that returns the element at that index
// ----------
// THEN
//go to ViewController and create an instance of the modelcontroller but the same way as you declared the array of ints in the model controller (required init)

// finish tableview imlpementation

class ViewController: UIViewController {
    
  
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 80
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
    return tableView
    }()
    
//    required init?(dataSource: [Int] = []) {
//
//    }
//    
    
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
    
//    func numberOfElements() -> Int {
//        
//        return UITableViewDataSource.count
//    }
}

//sextension ViewController: view

