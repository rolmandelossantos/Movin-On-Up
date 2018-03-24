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
    var isScrollEnabled = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
      //set initial point in charlotte nc
        let initialLocation = CLLocation(latitude: 35.227085, longitude: -80.843124)
        
        
        centerMapOnLocation(location: initialLocation)
        
        // show artwork on map
        let job1 = Artwork(title: "Hornets Job",
                              locationName: "Spectrum Center",
                              discipline: "Job1",
                              coordinate: CLLocationCoordinate2D(latitude: 35.225143, longitude: -80.839235))
        jobMapView.addAnnotation(job1)
        
        let job2 = Artwork(title: "City Job",
                           locationName: "Downtown Charlotte",
                           discipline: "Job2",
                           coordinate: CLLocationCoordinate2D(latitude: 35.227085, longitude: -80.843124))
        jobMapView.addAnnotation(job2)
        
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
