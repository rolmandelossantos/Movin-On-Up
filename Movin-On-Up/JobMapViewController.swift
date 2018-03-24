//
//  JobMapViewController.swift
//  Movin-On-Up
//
//  Created by Rolman De los Santos on 3/24/18.
//  Copyright © 2018 Rolman De los Santos. All rights reserved.
//

import UIKit
import MapKit

class JobMapViewController: UIViewController {

    @IBOutlet weak var jobMapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

      //set initial point in charlotte nc
        let initialLocation = CLLocation(latitude: 35.2271, longitude: 80.8431 )
        
        
        centerMapOnLocation(location: initialLocation)
    }
    
        let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        jobMapView.setRegion(coordinateRegion, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
