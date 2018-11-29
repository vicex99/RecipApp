//
//  RecipeListVC.swift
//  RecipApp
//
//  Created by VICTOR ALVAREZ LANTARON on 26/11/18.
//  Copyright © 2018 victorSL. All rights reserved.
//

import UIKit
import SDWebImage

class RecipeListVC: UIViewController {
    
    @IBOutlet weak var txtSeach: UITextField!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var btnSearch: UIButton!
    let searchController = UISearchController(searchResultsController: nil)
    
    internal var recipes : [Recipe] = []
    
    internal var filteredRecipes : [Recipe] = []
    
    convenience init(recipes: [Recipe]){
        self.init()
        self.recipes = recipes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Recetas"
        addContent()
        setCategoryCell()
        
        // Settings of searching bar
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Buscar..."
        searchController.searchBar.backgroundColor = UIColor.white
        navigationItem.searchController = searchController
//        navigationItem.hidesSearchBarWhenScrolling = false
        
        btnSearch?.layer.cornerRadius = 10;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //volver atras
    @objc func cancelPressed() {
        dismiss(animated: true, completion: nil)
    }
    
    private func setCategoryCell(){
        let identifier = "RecipeCell"
        let cellNib = UINib(nibName: identifier, bundle: nil)
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
    
    // navigation to recipleVC
    private func goRecipesDetails(_ recipe: Recipe) {
        let RecipeCategory = RecipeVC()
        navigationController?.pushViewController(RecipeCategory, animated: true)
    }
    
    // Search bar
    internal func searchBarIsEmpty() -> Bool{
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    internal func isFiltering() -> Bool{
        return searchController.isActive && !searchBarIsEmpty()
    }
    
    internal func filterForSearchItems(_ searchItem: String){
        filteredRecipes = recipes.filter({ (nRecipe: Recipe ) -> Bool in
            return (nRecipe.name.lowercased().contains(searchItem.lowercased()))
        })
        tableView.reloadData()
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
    
    // Que pasa cuando seleccionamos una de las filas
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        goRecipesDetails(self.recipes[indexPath.row])
        
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return(recipes.count > 0)
    }
    
    func createContactCellforIndexPath(_ indexPath: IndexPath) -> RecipeCell {
        let cell: RecipeCell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as! RecipeCell
        
        let recipe = recipes[indexPath.row]
        
        cell.lblName.text = recipe.name
        cell.imgRecipe.sd_setImage(with: URL(string: recipe.backgoundImg!), placeholderImage: UIImage(named: "Recipe"), options: .cacheMemoryOnly, completed: nil)
        cell.txtfDescription.text = recipe.description
       
        return cell
    }
    
}
extension RecipeListVC: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        filterForSearchItems(searchController.searchBar.text!)
    }
}


