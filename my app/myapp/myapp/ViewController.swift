//
//  ViewController.swift
//  myapp
//
//  Created by Farhan on 11/25/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class ViewController: UIViewController, MKMapViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func submit(_ sender: Any)
    {
        let letDalta: CLLocationDegrees = 0.05
        let longDalta: CLLocationDegrees = 0.05
        
        let La:CLLocationDegrees =  33.457
        
        let long:CLLocationDegrees =  73.451
        
        
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: letDalta, longitudeDelta: longDalta)
        
        let location: CLLocationCoordinate2D=CLLocationCoordinate2D(latitude: La, longitude: long)
        
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        MKMapv.setRegion(region,animated: true)
        
        let notifi = MKPointAnnotation()
        notifi.coordinate = location
        notifi.title = "Bahria University"
        notifi.subtitle = "Islamabad"
        MKMapv.addAnnotation(notifi)
    }
    @IBOutlet weak var Longi: UITextField!
    @IBOutlet weak var Lati: UITextField!
    @IBOutlet weak var MKMapv: MKMapView!
    override func didReceiveMemoryWarning()
    {
    super.didReceiveMemoryWarning()
}
}

