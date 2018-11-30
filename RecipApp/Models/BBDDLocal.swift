//
//  BBDDLocal.swift
//  RecipApp
//
//  Created by VICTOR ALVAREZ LANTARON on 30/11/18.
//  Copyright © 2018 victorSL. All rights reserved.
//

import Foundation

class BBDDLocal {
    
    internal var categories : [Category] = []
    
    private func addContent() {
        var categ = Category(title: "Carnes",
                             backgoundImg: "https://www.google.es/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwim2pfC1PveAhVPLBoKHZAQB1wQjRx6BAgBEAU&url=https%3A%2F%2Fwww.tresjotas.com%2Ftips%2Fsaber-termino-la-carne-cuando-se-cocina-la-parrilla%2F&psig=AOvVaw0P31NPMnikmVsoCzzbeN-F&ust=1543651593033804",
                             numRecites: "2",
                             description: "description default")
        categories.append(categ)
        
        categ = Category(title: "Pescados",
                         backgoundImg: "https://gravatar.com/avatar/9fec86bd99f2be58ce3db2a7bbc624df?s=400&d=identicon&r=x",
                         numRecites: "3",
                         description: "description default ")
        categories.append(categ)
        
        categ = Category(title: "Ensaladas",
                         backgoundImg: "https://gravatar.com/avatar/9fec86bd99f2be58ce3db2a7bbc624df?s=400&d=identicon&r=x",
                         numRecites: "2",
                         description: "description default ")
        categories.append(categ)
    }
}
