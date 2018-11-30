//
//  MapViewController.swift
//  RecipApp
//
//  Created by VICTOR ALVAREZ LANTARON on 26/11/18.
//  Copyright © 2018 victorSL. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapLocation: MKMapView!
    internal var recipeLocation: CLLocation?
    
    convenience init(_ lat: Double,_ lon: Double){
        self.init()
        recipeLocation = CLLocation(latitude: lat, longitude: lon)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Location"
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = (recipeLocation?.coordinate)!
        mapLocation.addAnnotation(annotation)
        let regionToShow = MKCoordinateRegionMakeWithDistance((recipeLocation?.coordinate)!, 1500, 1500)
        mapLocation.setRegion(regionToShow, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
