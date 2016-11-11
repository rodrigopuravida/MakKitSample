//
//  ViewController.swift
//  MakKitSample
//
//  Created by Rodrigo Carballo on 11/10/16.
//  Copyright © 2016 Rodrigo Carballo. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    @IBAction func zoomIn(_ sender: Any) {
        
        let userLocation = mapView.userLocation
        
        let region = MKCoordinateRegionMakeWithDistance((userLocation.location?.coordinate)!, 2000, 2000)
        
        mapView.setRegion(region, animated: true)
        
    }
    
    @IBAction func changeMapType(_ sender: Any) {
        
        if mapView.mapType == MKMapType.standard {
            mapView.mapType = MKMapType.satellite
        } else {
            mapView.mapType = MKMapType.standard
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.showsUserLocation = true
        mapView.delegate = self
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        mapView.centerCoordinate = (userLocation.location?.coordinate)!
    }


}

