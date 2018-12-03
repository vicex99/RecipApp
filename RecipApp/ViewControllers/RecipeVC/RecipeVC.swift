//
//  RecipeVC.swift
//  RecipApp
//
//  Created by VICTOR ALVAREZ LANTARON on 26/11/18.
//  Copyright © 2018 victorSL. All rights reserved.
//

import UIKit

class RecipeVC: UIViewController {

    @IBOutlet var txtTitle: UITextView!
    @IBOutlet var imgStart: UIImageView!
    @IBOutlet var txtIngredients: UITextView!
    
    @IBOutlet var txtDesc: UITextView!

    @IBOutlet var lblDifficult: UILabel!
    @IBOutlet var lblTime: UILabel!
    @IBOutlet var btnLocation: UIButton!
    
    internal var recipe: Recipe!
    
    convenience init(_ recipe: Recipe){
        self.init()
        self.recipe = recipe
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtTitle.text = recipe.name
        lblTime.text = recipe.duration
        lblDifficult.text = recipe.dificult
        txtDesc.text = recipe.description
        
        // To resize the textView
        self.txtDesc.translatesAutoresizingMaskIntoConstraints = true
        self.txtDesc.sizeToFit()
        self.txtDesc.isScrollEnabled = false
        
        setIngredients()
        imgStart.sd_setImage(with: URL(string: recipe.backgoundImg!), placeholderImage: UIImage(named: "Recipe"), options: .cacheMemoryOnly, completed: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
 
    internal func setIngredients(){
        var allingredients: String = " INGREDIENTES \n"
        for ingr in recipe.ingredients {
            allingredients = allingredients + "\n · " +  ingr + "\n"
        }
        
        self.txtIngredients.text = allingredients
        
        var allProgres: String = " \n PASOS \n"
        for step in recipe.elaboration {
            allProgres = allProgres + "\n · " +  step + "\n"
            
        }

        self.txtIngredients.text = self.txtIngredients.text + "\n" + allProgres
        
        self.txtIngredients.translatesAutoresizingMaskIntoConstraints = true
        self.txtIngredients.sizeToFit()
        self.txtIngredients.isScrollEnabled = false
    }
    
    @IBAction internal func toMap(){
        let RecipeMap = MapViewController(recipe.coordenades.lat, recipe.coordenades.lon)
        navigationController?.pushViewController(RecipeMap, animated: true)
    }
}
