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
    
    var Recipes: [Recipe]! = [
        Recipe(name: "otro", backgoundImg:"https://gravatar.com/avatar/9fec86bd99f2be58ce3db2a7bbc624df?s=400&d=identicon&r=x", description: "esta es otra receta de ajo"),
        Recipe(name: "otro2", backgoundImg:"https://gravatar.com/avatar/9fec86bd99f2be58ce3db2a7bbc624df?s=400&d=identicon&r=x", description: "pasa de esta"),
        Recipe(name: "otro3", backgoundImg:"https://gravatar.com/avatar/9fec86bd99f2be58ce3db2a7bbc624df?s=400&d=identicon&r=x", description: "esta LA receta")]
    
    // TODO: rellenar con recetas
    init(title: String, backgoundImg: String, numRecites: String, description: String){
        self.title = title
        self.backgoundImg = backgoundImg
        self.numRecites = numRecites
        self.description = description
    }
}
