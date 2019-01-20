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
    
    @IBAction func search(_ sender: Any) {
    }
    var latitude:String?
    var longitude:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let la: Double=Double(latitude!) ?? 0
        let lo:Double=Double(longitude!) ?? 0
        
        myMap.setCenter(CLLocationCoordinate2D(latitude: la,longitude:lo), animated:false)
    
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
