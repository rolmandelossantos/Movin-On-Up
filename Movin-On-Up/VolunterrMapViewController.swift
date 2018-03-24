//
//  VolunterrMapViewController.swift
//  Movin-On-Up
//
//  Created by Rolman De los Santos on 3/24/18.
//  Copyright © 2018 Rolman De los Santos. All rights reserved.
//

import UIKit
import MapKit

class VolunterrMapViewController: UIViewController {

    @IBOutlet weak var volMapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        //set initial point in charlotte nc
        let initialLocation = CLLocation(latitude: 35.227085, longitude: -80.843124)
        
        
        centerMapOnLocation(location: initialLocation)
        
        // show artwork on map
        let vol1 = Artwork(title: "Painting Shelters",
                           locationName: "Downtown Charlotte",
                           discipline: "vob1",
                           coordinate: CLLocationCoordinate2D(latitude: 35.227083, longitude: -80.843128))
        volMapView.addAnnotation(vol1)
        
        let vol2 = Artwork(title: "Habitat For Humanity",
                           locationName: "Downtown Charlotte",
                           discipline: "vol2",
                           coordinate: CLLocationCoordinate2D(latitude: 35.226120, longitude: -80.841200))
        volMapView.addAnnotation(vol2)
        
        
    }
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        volMapView.setRegion(coordinateRegion, animated: true)
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
