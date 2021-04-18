//
//  SportController.swift
//  mind-manager-ios
//
//  Created by Vladislav Chernyi on 28.03.2021.
//

import UIKit
import MapKit
import CoreLocation
 
class SportController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
        @IBOutlet weak var lblSportActivity: UILabel!
    
    var receivedString = ""
        
        let locationArray = ["yoga", "parks", "swimming pools", "running track", "paintball", "biking trail", "boxing", "golf course","hiking area","laser tag"]
        
        @IBAction func btnRandom(_ sender: Any) {
            viewDidLoad().self
        }
        
        
    @IBOutlet weak var lblSport: UILabel!
    override func viewDidLoad() {
            super.viewDidLoad()
            
            let randomLoc = locationArray.randomElement()
            
            let latDelta: CLLocationDegrees = 0.01

            let lonDelta: CLLocationDegrees = 0.01
            
            lblSport.text = receivedString

            if randomLoc == "yoga" {
                let latitude = 43.64756989927676
                let longitude = -79.42038278231642
//                let centerLocation = CLLocation(latitude: 43.64756989927676, longitude: -79.42038278231642)
//                goToLocation(location: centerLocation)
                lblSportActivity.text = "Yogaspace"
                
//                mapView.showsUserLocation = true
                
                let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
                
                let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
                let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
                self.mapView.setRegion(region, animated: true)
                
                let annotation: MKPointAnnotation = MKPointAnnotation()
                annotation.coordinate = location
                annotation.title = "Yogaspace"

                self.mapView.addAnnotation(annotation)
            }
            if randomLoc == "parks" {
                let latitude = 43.6611309882523
                let longitude = -79.41866381455726

                lblSportActivity.text = "Bickford Park"
                
                let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
                
                let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
                let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
                self.mapView.setRegion(region, animated: true)
                
                let annotation: MKPointAnnotation = MKPointAnnotation()
                annotation.coordinate = location
                annotation.title = "Bickford Park"

                self.mapView.addAnnotation(annotation)
            }
            if randomLoc == "swimming pools" {
                let latitude = 43.67565803100579
                let longitude = -79.4516384908566

                lblSportActivity.text = "Giovanni Caboto Outdoor Pool"
                
                let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
                
                let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
                let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
                self.mapView.setRegion(region, animated: true)
                
                let annotation: MKPointAnnotation = MKPointAnnotation()
                annotation.coordinate = location
                annotation.title = "Giovanni Caboto Outdoor Pool"

                self.mapView.addAnnotation(annotation)
            }
            if randomLoc == "running track" {
                let latitude = 43.765370661801995
                let longitude = -79.35150066892943

                lblSportActivity.text = "Betty Sutherland Trail Park"
                
                let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
                
                let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
                let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
                self.mapView.setRegion(region, animated: true)
                
                let annotation: MKPointAnnotation = MKPointAnnotation()
                annotation.coordinate = location
                annotation.title = "Betty Sutherland Trail Park"

                self.mapView.addAnnotation(annotation)
            }
            if randomLoc == "paintball" {
                let latitude = 43.805210990931315
                let longitude = -79.33769468365689

                lblSportActivity.text = "Defcon Paintball Toronto"
                
                let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
                
                let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
                let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
                self.mapView.setRegion(region, animated: true)
                
                let annotation: MKPointAnnotation = MKPointAnnotation()
                annotation.coordinate = location
                annotation.title = "Defcon Paintball Toronto"

                self.mapView.addAnnotation(annotation)
            }
            if randomLoc == "biking trail" {
                let latitude = 43.7344340084413
                let longitude = -79.3543440865438

                lblSportActivity.text = "Don Mills Trail"
                
                let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
                
                let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
                let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
                self.mapView.setRegion(region, animated: true)
                
                let annotation: MKPointAnnotation = MKPointAnnotation()
                annotation.coordinate = location
                annotation.title = "Don Mills Trail"

                self.mapView.addAnnotation(annotation)
            }
            if randomLoc == "boxing" {
                let latitude = 43.65581723204526
                let longitude = -79.36400749380303

                lblSportActivity.text = "Hardknocks Boxing Club"
                
                let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
                
                let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
                let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
                self.mapView.setRegion(region, animated: true)
                
                let annotation: MKPointAnnotation = MKPointAnnotation()
                annotation.coordinate = location
                annotation.title = "Hardknocks Boxing Club"

                self.mapView.addAnnotation(annotation)
            }
            if randomLoc == "golf course" {
                let latitude = 43.73648412211719
                let longitude = -79.39925596141822

                lblSportActivity.text = "Rosedale Golf Club"
                
                let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
                
                let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
                let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
                self.mapView.setRegion(region, animated: true)
                
                let annotation: MKPointAnnotation = MKPointAnnotation()
                annotation.coordinate = location
                annotation.title = "Rosedale Golf Club"

                self.mapView.addAnnotation(annotation)
            }
            if randomLoc == "hiking area" {
                let latitude = 43.743877241747384
                let longitude = -79.48423049412723

                lblSportActivity.text = "William Baker Trail - Hiking Area"
                
                let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
                
                let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
                let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
                self.mapView.setRegion(region, animated: true)
                
                let annotation: MKPointAnnotation = MKPointAnnotation()
                annotation.coordinate = location
                annotation.title = "William Baker Trail - Hiking Area"

                self.mapView.addAnnotation(annotation)
            }
            if randomLoc == "laser tag" {
                let latitude = 43.67949251062376
                let longitude = -79.34139314299918

                lblSportActivity.text = "Electric Perfume"
                
                let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
                
                let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
                let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
                self.mapView.setRegion(region, animated: true)
                
                let annotation: MKPointAnnotation = MKPointAnnotation()
                annotation.coordinate = location
                annotation.title = "Electric Perfume"

                self.mapView.addAnnotation(annotation)
            }
            if randomLoc == "" {
                let latitude = 43.6705
                let longitude = -79.3936

                lblSportActivity.text = "Casa Loma"
                
                let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
                
                let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
                let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
                self.mapView.setRegion(region, animated: true)
                
                let annotation: MKPointAnnotation = MKPointAnnotation()
                annotation.coordinate = location
                annotation.title = "Casa Loma"

                self.mapView.addAnnotation(annotation)
            }
            
        }
        
        func goToLocation(location: CLLocation) {
            let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            let region = MKCoordinateRegion(center: location.coordinate, span: span)
            mapView.setRegion(region, animated: false)
        }

    }

