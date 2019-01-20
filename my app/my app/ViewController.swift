import UIKit
import MapKit

import CoreLocation
class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapapp: UILabel!
    @IBOutlet weak var Latitude: UITextField!
    
    @IBOutlet weak var Longitude: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        MyMap.setRegion(MKCoordinateRegion, animated: true)
    }

    @IBOutlet weak var MyMap: MKMapView!
    @IBAction func search(for segue: UIStoryboardSegue, sender: Any?)
    {
        if(segue.identifier=="Mysegue")
        {
            let vc = segue.destination as! mapViewController
            vc.latitude=Latitude.text
            vc.longitude=Longitude.text
        }
    }}

