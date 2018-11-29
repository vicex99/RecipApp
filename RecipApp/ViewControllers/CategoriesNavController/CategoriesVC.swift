//
//  CategoriesVCViewController.swift
//  RecipApp
//
//  Created by VICTOR ALVAREZ LANTARON on 26/11/18.
//  Copyright © 2018 victorSL. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController {
    
//    weak var delegate: TVCEmptyStatusCellDelegate?
    
    @IBOutlet var tableView: UITableView!
    internal var categories : [Category] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Categories"
        setCategoryCell()
        addContent()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setCategoryCell(){
        let identifier = "categoryCell"
        let cellNib = UINib(nibName: "CategoryCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: identifier)
        
    }
    
    private func addContent() {
        var categ = Category(title: "newCateg", backgoundImg: "https://gravatar.com/avatar/9fec86bd99f2be58ce3db2a7bbc624df?s=400&d=identicon&r=x", numRecites: "2", description: "description default")
        categories.append(categ)
        
        categ = Category(title: "newCateg2", backgoundImg: "https://gravatar.com/avatar/9fec86bd99f2be58ce3db2a7bbc624df?s=400&d=identicon&r=x", numRecites: "3", description: "description default ")
        categories.append(categ)
        
        categ = Category(title: "newCateg2", backgoundImg: "https://gravatar.com/avatar/9fec86bd99f2be58ce3db2a7bbc624df?s=400&d=identicon&r=x", numRecites: "2", description: "description default ")
        categories.append(categ)
        
    }
    
    private func goRecipes(_ category: Category) {
        let RecipeCategory = RecipeListVC()
//        let navigationController = UINavigationController(rootViewController: RecipeCategory)
        navigationController?.pushViewController(RecipeCategory, animated: true)
//        navigationController.modalTransitionStyle = .crossDissolve
//        present(navigationController, animated: true, completion: nil)
    }
    
    //    internal func getPostAlamofire(){
    //        Alamofire.request("https://jsonplaceholder.typicode.com/users", method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil).response{
    //            (response) in
    //            if let jsonData =  response.data {
    //                let decoder = JSONDecoder()
    //                do{
    //                    self.categories = []
    //                    self.categories.append(contentsOf: try decoder.decode([Contact].self, from: jsonData))
    //                    print(self.categories.count, " title \(self.categories[0].id) -> \(self.categories[0].name) ")
    //                    // En alamofile si se puede hacer el reloadData por que lo mueve solo al hilo principal
    //                    self.contactTable.reloadData()
    //                }
    //                catch let error {
    //                    print("ERROR decoding Contacts arrays:", error.localizedDescription)
    //                }
    //            }
    //        }
    //    }

}


extension CategoriesVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView:UITableView) -> Int {
        return 1
    }
    
    func tableView (_ tableView: UITableView, numberOfRowsInSection selection: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220.0
    }
    
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell = createContactCellforIndexPath(indexPath) as CategoryCell
        return cell
    }
    // Que pasa cuando seleccionamos una de las filas
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      goRecipes(self.categories[indexPath.row])
        
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return(categories.count > 0)
    }
    
    func createContactCellforIndexPath(_ indexPath: IndexPath) -> CategoryCell {
        let cell: CategoryCell = tableView!.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as! CategoryCell
        
        let category = categories[indexPath.row]
        
        cell.lblName.text = category.title
        return cell
    }
}
