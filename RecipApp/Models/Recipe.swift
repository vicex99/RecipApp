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
    var duration : String!
    var dificult : String!
    
    var ingredients: [String]!
    var elaboration: [String]!
    
    var coordenades: Location!
    
    
    //TODO: añadir resto elementos
    init(name: String, backgoundImg: String, description: String, ingredients: [String], elaboration: [String], duration: String, dificult: String, location: Location){
        self.name = name
        self.backgoundImg = backgoundImg
        self.description = description
        self.ingredients = ingredients
        self.elaboration = elaboration
        self.duration = duration
        self.dificult = dificult
        self.coordenades = location
    }
}
