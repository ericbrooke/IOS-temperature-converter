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
        
        segmentControl.addTarget(self, action: "mapTypeChanged:", forControlEvents: .ValueChanged)
        
        segmentControl.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(segmentControl)
        
        let topConstraint
            = segmentControl.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 8)
        
        let margins = view.layoutMarginsGuide
        let leadingConstraint
            = segmentControl.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor)
        let trailingConstraint
            = segmentControl.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor)
        
        topConstraint.active = true
        leadingConstraint.active = true
        trailingConstraint.active = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MapViewController loaded its view")
    }
    
    func mapTypeChanged(segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .Standard
        case 1:
            mapView.mapType = .Hybrid
        case 2:
            mapView.mapType = .Satellite
        default:
            break
        }
    }
}
