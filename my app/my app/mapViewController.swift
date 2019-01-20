//
//  mapViewController.swift
//  my app
//
//  Created by Farhan on 11/26/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import UIKit
import MapKit

class mapViewController: UIViewController,MKMapViewDelegate  {
    @IBOutlet weak var myMap: MKMapView!
    
    var latitude:String?
    var longitude:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var lat: Double=Double(latitude!)!
        var long:Double=Double(longitude!)!
        
        myMap.setCenter(CLLocationCoordinate2D(latitude: lat,longitude:long), animated:false)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
