//
//  ModelController.swift
//  RequiredInitTableViewApp
//
//  Created by Apple on 11/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

// create a class, called ModelController
// declare an array of ints (declared is not the same thing as initialize)
// create a required init:  required init?(dataSource: [Int] = []) {
//      code
//   }

import UIKit

class ModelController {
    var dataSource: [Int]
    
    required init(dataSource: [Int]) {
        self.dataSource = dataSource
    }
    
    func numberOfElements() -> Int {
        
        return dataSource.count
    }
    
    func elementAtIndex(index: Int?) -> Int?{
        
        return dataSource[index ?? 0]
    }
}
