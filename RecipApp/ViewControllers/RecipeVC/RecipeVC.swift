//
//  RecipeVC.swift
//  RecipApp
//
//  Created by VICTOR ALVAREZ LANTARON on 26/11/18.
//  Copyright © 2018 victorSL. All rights reserved.
//

import UIKit

class RecipeVC: UIViewController {

    @IBOutlet var txtTitle: UILabel?
    @IBOutlet var imgStart: UIImageView?
//    @IBOutlet var ingredientsTable: UITableView?
//    @IBOutlet var doneTable: UITableView?
    
    internal var recipe: Recipe!
    
    convenience init(recipe: Recipe){
        self.init()
        self.recipe = recipe
//        txtTitle = recipe.name
//        txt
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
