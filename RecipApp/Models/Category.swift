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
    let description: String!
    
    var recipes: [Recipe]!
    
    // TODO: rellenar con recetas
    init(title: String, backgoundImg: String, description: String, recipes: [Recipe]){
        self.title = title
        self.backgoundImg = backgoundImg
        self.description = description
        self.recipes = recipes
    }
}
