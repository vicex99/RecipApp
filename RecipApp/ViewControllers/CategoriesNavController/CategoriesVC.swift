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
        setData()
        tableView.reloadData()
        
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
    
    
    
    private func goRecipes(_ arrRecipe: [Recipe]) {
        let RecipeCategory = RecipeListVC(arrRecipe)
        navigationController?.pushViewController(RecipeCategory, animated: true)

    }
    
    public func setData(){
        var categ = Category(title: "Carnes",
                             backgoundImg: "https://st2.depositphotos.com/1194063/7305/i/950/depositphotos_73050715-stock-photo-beef-steaks-with-grilled-vegetables.jpg",
                             description: "las mejores partes de carne con su mejor complemento",
                             recipes: [
                                Recipe(name: "Solomillo de cerdo con salsa de champiñones",
                                       backgoundImg: "https://static.hogarmania.com/archivos/201806/solomillo-cerdo-xl-848x477x80xX.jpg",
                                       description: "Espectacular solomillo en rollo con deliciosa salsa de champiñones",
                                       ingredients: ["1 solomillo de cerdo de 400 g", "3 orejones picados", "2 lonchas de jamón york", "2 lonchas de queso emmental", "30 g de ajos sin pelar", "aceite de oliva ", "sal y pimienta", "350 g de champiñones ", "70 g de chalota", "350 g de nata", "50 g de mantequilla", "1 pastilla de caldo", "2 cucharadas soperas de vino oporto", "1 cucharilla de mostaza de Dijon", "500 ml de agua", "1 cucharada sopera de perejil picado", "sal y pimienta"],
                                       elaboration: ["SOLOMILLO", "Cortar los solomillos en dos, a lo largo, sin llegar hasta el final en forma de libro. Salpimentar.", "Colocar en el centro del solomillo el jamón cocido, dos lonchas de queso y los orejones picados en dados de 5x5mm.", "Cerrar el solomillo con hilo de bridar haciendo nudos con una separación de 2-3 cm.", "Precalentar el horno a 180ºC.", "Precalentar el horno a 180ºC.", "Colocar en una bandeja de horno junto a los ajos y hornear unos 10 minutos más.", "Retirar del horno y dejarlo reposar 5 minutos cubierto de papel aluminio con dos chimeneas en la parte superior.", "SALSA", "Picar la chalota y filetear los champiñones.", "Rehogar la chalota con la mantequilla en una cazuela durante 3 minutos hasta que este translucida, añadir los champiñones fileteados y una pizca de sal, seguir rehogando todo junto hasta que el champiñón suelte su agua, unos 4 minutos. Calentar el agua, disolver la pastilla de caldo.", "Añadir el oporto, agregar el caldo, la nata y la mostaza, y mezclar bien.", "Cuando rompa el hervor, bajar el fuego a mínimo y cocer lentamente durante 12 minutos hasta que la salsa tenga la cremosidad deseada.", "Poner a punto de sal y pimienta, agregar el perejil picado y servir con el solomillo."],
                                       duration: "2h",
                                       dificult: "hard",
                                       location: Location(lat: 23.654,lon: 76.234)),
                                
                                Recipe(name: "Brochetas de solomillo y melón con ensalada de rúcula",
                                       backgoundImg: "https://static.hogarmania.com/archivos/201704/brocheta-editorial-1280x720x80xX.jpg",
                                       description: "Receta de brochetas de solomillo y melón con ensalada de rúcula por Karlos Arguiñano, una sabrosa forma de combinar diferentes sabores.",
                                       ingredients: ["2 solomillos de cerdo", "100 g de rúcula", "500 g de melón", "2 setas de primavera", "200 ml de vino Pedro Ximénez", "vinagre de Jerez", "aceite de oliva virgen extra", "sal", "pimienta", "perejil"],
                                       elaboration: ["Pon el vino y 50 ml de vinagre a reducir en una cazuelita hasta que espese.", "Salpimienta los solomillos y dóralos por los 2 lados en una plancha con un chorrito de aceite. A los 4 minutos retíralos y corta cada uno en 6 trozos. Corta el melón en 4 lonchas, pela y dóralas en la plancha durante 2 minutos. Corta cada una por la mitad.", "Monta las brochetas alternando 3 trozos de solomillo y 2 de melón. Riega una placa de horno con un chorrito de aceite, coloca encima las brochetas y hornéalas a 200º C durante 5-6 minutos.", "Limpia y seca las hojas de rúcula y ponlas en una fuente. Sazona y alíñalas con aceite y vinagre. Mezcla bien. Corta con el cortador de trufa unas láminas de setas y espárcelas sobre la ensalada.", "Sirve las brochetas, salséalas y acompáñalas con la ensalada. Adorna con unas hojas de perejil."],
                                       duration: "2h",
                                       dificult: "hard",
                                       location: Location(lat: 87.654,lon: 79.696)
                                )
            ])
        
        categories.append(categ)
        
        categ = Category(title: "Pescados",
                         backgoundImg: "https://png.pngtree.com/thumb_back/fw800/back_pic/03/56/22/15579ddddd82192.jpg",
                         description: "description default ",
                         recipes: [
                            Recipe(name: "Anchoas al limón",
                                   backgoundImg: "https://static.hogarmania.com/archivos/201805/karl6188-anchoas-al-limon-editorial-horizontal-1280x720x80xX.jpg",
                                   description: "receta de anchoas frescas al limón acompañadas de tostadas de pan.",
                                   ingredients: ["800 g de anchoas (frescas)", "1 barra de pan", "1 diente de ajo", "2 limones", "aceite de oliva virgen extra", "sal", "pimienta", "prejil"],
                                   elaboration: ["Corta 12 rebanadas de pan y tuéstalas en el horno. Pela el diente de ajo y unta las tostadas.", "Retira la cabeza y las tripas de las anchoas, retírales la espina central y ábrelas como un libro.", "Vierte un chorrito de aceite en una tartera. Extiende una capa de anchoas (dejando la parte de la piel hacia arriba). Salpimienta y espolvoréalas con un poco de perejil picado. Coloca encima otra capa, salpimienta de nuevo y espolvorea con perejil picado. Repite el proceso hasta completar todas las anchoas.", "Corta 1 limón por la mitad y exprímelo. Vierte el zumo sobre las anchoas. Riégalas con un chorrito de aceite, coloca la tapa y cocínalas a fuego suave durante 5-6 minutos. Corta el otro limón en rodajas y colócalas bordeando la parte interior de la tartera.", "Sirve las anchoas con las tostadas de pan y decora los platos con unas hojas de perejil."],
                                duration: "2h",
                                dificult: "hard",
                                location: Location(lat: 0.654,lon: 91.835)
                            ),
                            Recipe(name: "Corvina rebozada con salsa tártara y pimientos",
                                   backgoundImg: "https://static.hogarmania.com/archivos/201811/corvina-rebozada-editorial-1280x720x80xX.jpg",
                                   description: "Corvina rebozada con salsa tártara y pimientos",
                                   ingredients: ["1 corvina", "2 pimientos morrones", "5 huevos", "½ cebolleta", "1 diente de ajo", "15 g de alcaparras", "3 pepinillos en vinagre", "1 cucharadita de mostaza de Dijon", "aceite de oliva virgen extra", "harina", "vinagre", "sal", "pimienta", "cebollino", "perejil"],
                                   elaboration: ["Pon agua a calentar en una cazuela. Agrega 1 huevo y ponlo a cocer. Cuando lleve 10 minutos hirviendo, apaga el fuego. Refresca, pela y resérvalo.", "Pon otro huevo en un vaso de batidora, agrega un chorrito de vinagre y una pizca de sal. Añade 200 ml de aceite y tritura los ingredientes hasta que liguen. Pasa la mahonesa a un bol. Pica las alcaparras finamente y los pepinillos en daditos, y agrégalos a la mahonesa. Pica el huevo cocido, la cebolleta y el cebollino y añádelos. Agrega la mostaza, mezcla todos los ingredientes y reserva la salsa tártara.", "Pela los pimientos morrones, córtalos en tiras y fríelos en una sartén con aceite. Sazona.", "Retira la cabeza de la corvina, saca los lomos, retírales la piel y corta cada lomo en 2 trozos. Salpimienta y pásalos por harina y huevo batido.", "Pon a calentar una sartén con abundante aceite. Aplasta el diente de ajo (con piel) y agrégalo. Introduce también el pescado y fríelo por los dos lados. Retíralos a una fuente cubierta con papel absorbente.", "Sirve el pescado con la salsa tártara y los pimientos. Adorna con unas hojas de perejil."],
                                   duration: "50min",
                                   dificult: "simple",
                                   location: Location(lat: 23.654,lon: 65.835)
                            ),
                            Recipe(name: "Borreta alicantina",
                                   backgoundImg: "https://static.hogarmania.com/archivos/201810/borreta-alicantina-editorial-1280x720x80xX.jpg",
                                   description: "¡muy apetecible en días de frío!",
                                   ingredients: ["400 g de bacalao desalado", "4 huevos", "3 patatas", "½ k de espinacas", "1 cabeza de ajos", "1 l de agua", "2 ñoras", "1 cebolla", "aceite de oliva virgen extra", "sal"],
                                   elaboration: ["Pon 1 l de agua a calentar en una cazuela grande. Pela las patatas, casca y agrégalas. Pela los dientes de ajo y añádelos. Pela la cebolla, córtala por la mitad e incorpórala. Corta también el bacalao (sin piel) en trozos grandes y mételo en la cazuela. Retira los tallos y las pepitas a las ñoras y añádelas. Finalmente, limpia las espinacas, pica e agrégalas. Sazona.", "Cuando empiece a hervir, vierte un chorrito de aceite y cocina todo a fuego medio (sin tapar) durante 30 minutos.", "Casca los huevos, agrégalos a la cazuela y sazónalos. Coloca la tapa y espera a que cuajen. Sirve."],
                                   duration: "2h",
                                   dificult: "hard",
                                   location: Location(lat: 0.654,lon: 91.835)
                            )
            ]
        )
        categories.append(categ)
        
        categ = Category(title: "Ensaladas y verduras",
                         backgoundImg: "https://previews.123rf.com/images/vicushka/vicushka1602/vicushka160200084/52224422-variedad-de-ensaladas-y-decoraci%C3%B3n-sanos-ingredientes-en-el-fondo-r%C3%BAstico-luz-vista-desde-arriba-bandera-es.jpg",
                         description: "refrescantes ensaladas y deliciosas verduras salidas ",
                         recipes: [
                            Recipe(name: "Brochetas de solomillo y melón con ensalada de rúcula",
                                   backgoundImg: "https://static.hogarmania.com/archivos/201704/brocheta-editorial-1280x720x80xX.jpg",
                                   description: "Receta de brochetas de solomillo y melón con ensalada de rúcula por Karlos Arguiñano, una sabrosa forma de combinar diferentes sabores.",
                                   ingredients: ["2 solomillos de cerdo", "100 g de rúcula", "500 g de melón", "2 setas de primavera", "200 ml de vino Pedro Ximénez", "vinagre de Jerez", "aceite de oliva virgen extra", "sal", "pimienta", "perejil"],
                                   elaboration: ["Pon el vino y 50 ml de vinagre a reducir en una cazuelita hasta que espese.", "Salpimienta los solomillos y dóralos por los 2 lados en una plancha con un chorrito de aceite. A los 4 minutos retíralos y corta cada uno en 6 trozos. Corta el melón en 4 lonchas, pela y dóralas en la plancha durante 2 minutos. Corta cada una por la mitad.", "Monta las brochetas alternando 3 trozos de solomillo y 2 de melón. Riega una placa de horno con un chorrito de aceite, coloca encima las brochetas y hornéalas a 200º C durante 5-6 minutos.", "Limpia y seca las hojas de rúcula y ponlas en una fuente. Sazona y alíñalas con aceite y vinagre. Mezcla bien. Corta con el cortador de trufa unas láminas de setas y espárcelas sobre la ensalada.", "Sirve las brochetas, salséalas y acompáñalas con la ensalada. Adorna con unas hojas de perejil."],
                                   duration: "2h",
                                   dificult: "hard",
                                   location: Location(lat: 88.454,lon: 29.636)
                            ),
                            Recipe(name: "Acelgas con anchoas y huevo escalfado",
                                   backgoundImg: "https://static.hogarmania.com/archivos/201805/6182-1-acelgas-con-anchoas-y-huevo-escalfado-editorial-xl-1280x720x80xX.jpg",
                                   description: "receta de salteado de acelgas y anchoas, con puré de patata y huevo escalfado.",
                                   ingredients: ["1 k de acelgas", "4 patatas", "4 huevos", "4 anchoas en aceite", "2 dientes de ajo", "2 ajos frescos", "aceite de oliva virgen extra", "sal", "pimienta", "perejil"],
                                   elaboration: ["Pon las patatas en una cazuela, cúbrelas con abundante agua y cuécelas durante 30 minutos. En el momento de servir, pela, pásalas por el pasa purés y aderézalas con aceite y sal.", "Separa las pencas de las hojas. Retira los hilos de las pencas con un cuchillo. Pícalas en dados de 3 centímetros. Pica también las hojas. Pon a calentar una cazuela grande con agua. Sazona y cuando empiece a hervir, agrega las pencas y las hojas. Cuécelas durante 15 minutos. Escúrrelas bien.", "Pela y pica los dientes de ajo finamente. También los ajos frescos. Rehógalos en una sartén con un chorrito de aceite. Agrega las anchoas picaditas y las acelgas. Saltea todo brevemente.", "Pon agua a calentar en una cazuela amplia y baja. Cuando empiece a hervir, baja el fuego y agrega los huevos. Escálfalos durante 3 minutos.", "Sirve el puré de patata en una fuente y coloca encima las acelgas. Acompaña con los huevos escalfados y salpimiéntalos. Espolvorea con perejil picado y sirve."],
                                   duration: "2h",
                                   dificult: "hard",
                                   location: Location(lat: 12.677,lon: 45.397)
                            )
            ]
        )
        categories.append(categ)
    }
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        goRecipes(self.categories[indexPath.row].recipes)
        
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return(categories.count > 0)
    }
    
    func createContactCellforIndexPath(_ indexPath: IndexPath) -> CategoryCell {
        let cell: CategoryCell = tableView!.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as! CategoryCell
        
        let category = categories[indexPath.row]
        
        cell.lblName.text = category.title
        cell.lblNUmberCategories.text = "\(category.recipes.count) recipes"
        cell.lblDescription.text = category.description
        
        cell.lblName.textColor = UIColor.white
//        cell.lblNUmberCategories.textColor = UIColor.white
        cell.imgBackground.sd_setImage(with: URL(string: category.backgoundImg), placeholderImage: UIImage(named: "Recipe"), options: .cacheMemoryOnly, completed: nil)
        return cell
    }
}
