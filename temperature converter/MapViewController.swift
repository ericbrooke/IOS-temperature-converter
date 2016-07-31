//
//  MapViewController.swift
//  temperature converter
//
//  Created by Eric Brooke on 7/30/16.
//  Copyright © 2016 Eric Brooke. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    
    override func loadView() {
        mapView = MKMapView()
        
        view = mapView
        
        let segmentControl
            = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentControl.backgroundColor
            = UIColor.whiteColor().colorWithAlphaComponent(0.5)
        segmentControl.selectedSegmentIndex = 0
        
        segmentControl.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(segmentControl)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MapViewController loaded its view")
    }
}
