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
   
    //14.1656915,101.34554129999992 หอชาย
    var lattitude2 = 14.1656915
    var longitude2 = 101.34554129999992
    
    // 14.1646736,101.34437350000007 หอหญิง
    var lattitude3 = 14.1646736
    var longitude3 = 101.34437350000007
    
    var lattitude4 = 14.164992993936865
    var longitude4 = 101.3433642364505
   // 14.164992993936865,101.3433642364505
    
   // ตึกบริหาร 14.161144, 101.360784
    var lattitude5 = 14.161144
    var longitude5 = 101.360784
    
    var lattitude6 = 14.157459
    var longitude6 = 101.349101
   // ตึก อก 14.157459, 101.349101
    
    var lattitude7 = 14.156331
    var longitude7 = 101.342840
  //  ตึกวิศว 14.156331, 101.342840
    
    //ตึกสิรินธร 14.157666, 101.345912
    var lattitude8 = 14.157666
    var longitude8 = 101.345912
    
    //ตึก ca  14.158543, 101.344199
    var lattitude9 = 14.158543
    var longitude9 = 101.344199
    
    //ตึก ta 14.157872, 101.343545
    var lattitude10 = 14.157872
    var longitude10 = 101.343545
    
    //โรงแรมวิลล่า 14.162461, 101.362101
    var lattitude11 = 14.162461
    var longitude11 = 101.362101
    
  //  หลวงพ่อสิง 14.160604, 101.347237
    var lattitude12 = 14.160604
    var longitude12 = 101.347237

    
    var manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let span = MKCoordinateSpan.init(latitudeDelta: 0.01, longitudeDelta: 0.01)

        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lattitude, longitude: longitude), span: span)
    
        mapView.setRegion(region, animated: true)
        
        // setting-up a pin FITM
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lattitude, longitude: longitude)
        
        let pinObject = MKPointAnnotation()
        
        pinObject.coordinate = pinLocation
        pinObject.title = "ตึกคณะเทคโน"
        pinObject.subtitle = "FITM"
        self.mapView.addAnnotation(pinObject)
        
        // setting-up a pin หอชาย
        let region2 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lattitude2, longitude: longitude2), span: span)
        mapView.setRegion(region2, animated: true)
        let pinLocation2: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lattitude2, longitude: longitude2)
        let pinObject2 = MKPointAnnotation()
        pinObject2.coordinate = pinLocation2
        pinObject2.title = "หอพักนักศึกษา"
        pinObject2.subtitle = "หอชาย"
        self.mapView.addAnnotation(pinObject2)
        
        // setting-up a pin หอหญิง1
        let region3 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lattitude3, longitude: longitude3), span: span)
        mapView.setRegion(region3, animated: true)
        let pinLocation3: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lattitude3, longitude: longitude3)
        let pinObject3 = MKPointAnnotation()
        pinObject3.coordinate = pinLocation3
        pinObject3.title = "หอพักนักศึกษา"
        pinObject3.subtitle = "หอหญิง1"
        self.mapView.addAnnotation(pinObject3)
        
        // setting-up a pin หอหญิง2
        let region4 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lattitude4, longitude: longitude4), span: span)
        mapView.setRegion(region4, animated: true)
        let pinLocation4: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lattitude4, longitude: longitude4)
        let pinObject4 = MKPointAnnotation()
        pinObject4.coordinate = pinLocation4
        pinObject4.title = "หอพักนักศึกษา"
        pinObject4.subtitle = "หอหญิง2"
        self.mapView.addAnnotation(pinObject4)
        
        // setting-up a pin ตึกบริหาร
        let region5 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lattitude5, longitude: longitude5), span: span)
        mapView.setRegion(region5, animated: true)
        let pinLocation5: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lattitude5, longitude: longitude5)
        let pinObject5 = MKPointAnnotation()
        pinObject5.coordinate = pinLocation5
        pinObject5.title = "ตึกบริหาร"
        pinObject5.subtitle = "IBT"
        self.mapView.addAnnotation(pinObject5)
        
        // setting-up a pin ตึกอก
        let region6 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lattitude6, longitude: longitude6), span: span)
        mapView.setRegion(region6, animated: true)
        let pinLocation6: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lattitude6, longitude: longitude6)
        let pinObject6 = MKPointAnnotation()
        pinObject6.coordinate = pinLocation6
        pinObject6.title =  "ตึก อก."
        pinObject6.subtitle = "อุตสาหกรรมเกตร"
        self.mapView.addAnnotation(pinObject6)
        
        // setting-up a pin ตึกวิศวะ
        let region7 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lattitude7, longitude: longitude7), span: span)
        mapView.setRegion(region7, animated: true)
        let pinLocation7: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lattitude7, longitude: longitude7)
        let pinObject7 = MKPointAnnotation()
        pinObject7.coordinate = pinLocation7
        pinObject7.title = "ตึกวิศวะเครื่องมือวัด"
        pinObject7.subtitle = "Inse"
        self.mapView.addAnnotation(pinObject7)
        
        // setting-up a pin ตึกสิรินธร
        let region8 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lattitude8, longitude: longitude8), span: span)
        mapView.setRegion(region8, animated: true)
        let pinLocation8: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lattitude8, longitude: longitude8)
        let pinObject8 = MKPointAnnotation()
        pinObject8.coordinate = pinLocation8
        pinObject8.title = "หอสมุด"
        pinObject8.subtitle = "ตึกสิรินธร"
        self.mapView.addAnnotation(pinObject8)
        
        // setting-up a pin ตึกca
        let region9 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lattitude9, longitude: longitude9), span: span)
        mapView.setRegion(region9, animated: true)
        let pinLocation9: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lattitude9, longitude: longitude9)
        let pinObject9 = MKPointAnnotation()
        pinObject9.coordinate = pinLocation9
        pinObject9.title = "ตึกการออกแบบและบริหารงานก่อสร้าง"
        pinObject9.subtitle = "CA-CDM"
        self.mapView.addAnnotation(pinObject9)
        
        // setting-up a pin ตึกta
        let region10 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lattitude10, longitude: longitude10), span: span)
        mapView.setRegion(region10, animated: true)
        let pinLocation10: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lattitude10, longitude: longitude10)
        let pinObject10 = MKPointAnnotation()
        pinObject10.coordinate = pinLocation10
        pinObject10.title = "ตึกวิศวกรรมเกษตรเพื่ออุตสาหกรรม"
        pinObject10.subtitle = "TA-TAM"
        self.mapView.addAnnotation(pinObject10)
        
        // setting-up a pin โรงแรมวิลล่า
        let region11 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lattitude11, longitude: longitude11), span: span)
        mapView.setRegion(region11, animated: true)
        let pinLocation11: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lattitude11, longitude: longitude11)
        let pinObject11 = MKPointAnnotation()
        pinObject11.coordinate = pinLocation11
        pinObject11.title = "โรงแรม"
        pinObject11.subtitle = "วิลล่า โฮลเทล"
        self.mapView.addAnnotation(pinObject11)
        
        // setting-up a pin หลวงพ่อสิงห์
        let region12 = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lattitude12, longitude: longitude12), span: span)
        mapView.setRegion(region12, animated: true)
        let pinLocation12: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lattitude12, longitude: longitude12)
        let pinObject12 = MKPointAnnotation()
        pinObject12.coordinate = pinLocation12
        pinObject12.title = "ที่สักการะบูชา"
        pinObject12.subtitle = "หลวงพอสิงห์"
        self.mapView.addAnnotation(pinObject12)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
        

//     reseive permission to get location (best)
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

