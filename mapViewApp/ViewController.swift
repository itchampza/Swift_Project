//
//  ViewController.swift
//  mapViewApp
//
//  Created by ChampIs on 26/03/2019.
//  Copyright © 2019 ChampIs. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    //14.1585569,101.34561069999995
    var lattitude = 14.1585569
    var longitude = 101.34561069999995
    
    var manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let span = MKCoordinateSpan.init(latitudeDelta: 0.01, longitudeDelta: 0.01)

        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lattitude, longitude: longitude), span: span)
    
        mapView.setRegion(region, animated: true)
        
        // setting-up a pin
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lattitude, longitude: longitude)
        
        let pinObject = MKPointAnnotation()
        
        pinObject.coordinate = pinLocation
        pinObject.title = "FITM"
        // pinObject.subtitle = "Best castle in Volyn"
        self.mapView.addAnnotation(pinObject)
        
        
    }

    @IBAction func standart(_ sender: Any) {
        
        mapView.mapType = MKMapType.standard
    }
    
    @IBAction func satelite(_ sender: Any) {
        
        mapView.mapType = MKMapType.satellite
    }
    
    @IBAction func hybrid(_ sender: Any) {
        
        mapView.mapType = MKMapType.hybrid
    }
    
    @IBAction func locate(_ sender: Any) {
        
        
    // reseive permission to get location (best)
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        mapView.showsUserLocation = true
    }
    
    
    // gerring location of a user
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let userLocation: CLLocation = locations[0] as CLLocation
        
        manager.stopUpdatingLocation()
        
        let location = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        
         let span = MKCoordinateSpan.init(latitudeDelta: 0.01, longitudeDelta: 0.01)
     
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(region, animated: true)
        
    }
    
    @IBAction func directions(_ sender: Any) {
        
        UIApplication.shared.open(URL(string:"http://maps.apple.com/maps?daddr=\(lattitude),\(longitude)")!, options: [:], completionHandler: nil)
        
    }
}

