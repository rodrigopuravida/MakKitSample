//
//  ViewController.swift
//  MakKitSample
//
//  Created by Rodrigo Carballo on 11/10/16.
//  Copyright © 2016 Rodrigo Carballo. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    @IBAction func zoomIn(_ sender: Any) {
    }
    
    @IBAction func changeMapType(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.showsUserLocation = true
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

