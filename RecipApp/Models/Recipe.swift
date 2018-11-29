//
//  Recipes.swift
//  RecipApp
//
//  Created by VICTOR ALVAREZ LANTARON on 26/11/18.
//  Copyright © 2018 victorSL. All rights reserved.
//

import Foundation

class Recipe {
    
    var name : String!
    var backgoundImg : String!
    var description : String!
    
    var ingredients: [String]!
    
    var elaboracionPasos: [String]!
    
    //TODO: añadir resto elementos
    init(name: String, backgoundImg: String, description: String){
        self.name = name
        self.backgoundImg = backgoundImg
        self.description = description
    }
}
