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
    @IBOutlet var txtSteps: UITextView!

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
        setIngredients()
        setProgress()
        imgStart.sd_setImage(with: URL(string: recipe.backgoundImg!), placeholderImage: UIImage(named: "Recipe"), options: .cacheMemoryOnly, completed: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
 
    internal func setIngredients(){
        var allingredients: String = ""
        for ingr in recipe.ingredients {
            allingredients = allingredients + "\n " +  ingr
        }
        
        self.txtIngredients.text = allingredients
        
        self.txtIngredients.translatesAutoresizingMaskIntoConstraints = true
        self.txtIngredients.sizeToFit()
        self.txtIngredients.isScrollEnabled = false
    }
    
    internal func setProgress(){
        var allProgres: String = ""
        for step in recipe.elaboration {
            allProgres = allProgres + "\n " +  step
        }
        
        self.txtIngredients.text = allProgres
        
        self.txtIngredients.translatesAutoresizingMaskIntoConstraints = true
        self.txtIngredients.sizeToFit()
        self.txtIngredients.isScrollEnabled = false
    }
    
    @IBAction internal func toMap(){
        let RecipeMap = MapViewController(recipe.coordenades.lat, recipe.coordenades.lon)
        navigationController?.pushViewController(RecipeMap, animated: true)
    }
}
