//
//  RecipeListVC.swift
//  RecipApp
//
//  Created by VICTOR ALVAREZ LANTARON on 26/11/18.
//  Copyright © 2018 victorSL. All rights reserved.
//

import UIKit

class RecipeListVC: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var btnSearch: UIButton!
    internal var recipes : [Recipe] = []
    
    internal var filteredrRecipes : [Recipe] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Recetas"
        addContent()
        SetupBtnBar()
        setCategoryCell()
        
        btnSearch?.layer.cornerRadius = 10;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func SetupBtnBar() {
        //crea el boton para cancelar la pantalla e ir para atras
        let btnBarCancel = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelPressed))
        
        //incluye el boton al navegador
        navigationItem.setLeftBarButton(btnBarCancel, animated: false)
    }
    
    //volver atras
    @objc func cancelPressed() {
        dismiss(animated: true, completion: nil)
    }
    
    private func setCategoryCell(){
        let identifier = "recipeCell"
        let cellNib = UINib(nibName: "RecipeCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: identifier)
    }
    
    private func addContent() {
        var rcts = Recipe(name: "newRecipe", backgoundImg: "https://gravatar.com/avatar/9fec86bd99f2be58ce3db2a7bbc624df?s=400&d=identicon&r=x", description: "description default")
        recipes.append(rcts)
        
        rcts = Recipe(name: "newRecipe2", backgoundImg: "https://gravatar.com/avatar/9fec86bd99f2be58ce3db2a7bbc624df?s=400&d=identicon&r=x", description: "description default ")
        recipes.append(rcts)
        
        rcts = Recipe(name: "newRecipe3", backgoundImg: "https://gravatar.com/avatar/9fec86bd99f2be58ce3db2a7bbc624df?s=400&d=identicon&r=x", description: "description default ")
        recipes.append(rcts)
    }
}

extension RecipeListVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView:UITableView) -> Int {
        return 1
    }
    
    func tableView (_ tableView: UITableView, numberOfRowsInSection selection: Int) -> Int {
        return recipes.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220.0
    }
    
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell = createContactCellforIndexPath(indexPath) as RecipeCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return(recipes.count > 0)
    }
    
    func createContactCellforIndexPath(_ indexPath: IndexPath) -> RecipeCell {
        let cell: RecipeCell = tableView?.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath) as! RecipeCell
        
        let recipe = recipes[indexPath.row]
        
        cell.lblName.text = recipe.name
        return cell
    }
}



