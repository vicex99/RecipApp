//
//  Category.swift
//  RecipApp
//
//  Created by VICTOR ALVAREZ LANTARON on 26/11/18.
//  Copyright © 2018 victorSL. All rights reserved.
//

import Foundation

class Category {
    
    let title : String!
    let backgoundImg : String!
    let numRecites : String!
    let description: String!
    
    var Recipes: [Recipe]!
    
    // TODO: rellenar con recetas
    init(title: String, backgoundImg: String, numRecites: String, description: String){
        self.title = title
        self.backgoundImg = backgoundImg
        self.numRecites = numRecites
        self.description = description
    }
}
