//
//  OutdoorsController.swift
//  mind-manager-ios
//
//

import UIKit
import MapKit
import CoreLocation

class OutdoorsController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var lblOutdoorActivity: UILabel!
    
    let locationArray = ["fishing", "parks", "hangout", "running track", "paintball", "biking trail", "shopping", "massage therapy"]
    
    @IBAction func btnRandom(_ sender: Any) {
        viewDidLoad().self
    }
    
    var receivedString = ""
    
    @IBOutlet weak var lblOutdoor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomLoc = locationArray.randomElement()
        
            
        let latDelta: CLLocationDegrees = 0.01

        let lonDelta: CLLocationDegrees = 0.01
        
        lblOutdoor.text = receivedString


        if randomLoc == "fishing" {
            let latitude = 43.64106388801521
            let longitude = -79.46687074751708
            lblOutdoorActivity.text = "Grenadier Pond"
            
            let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
            
            let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
            let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation: MKPointAnnotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = "Grenadier Pond"

            self.mapView.addAnnotation(annotation)
        }
        
        if randomLoc == "parks" {
            let latitude = 43.64655677959097
            let longitude = -79.46369134087968
            lblOutdoorActivity.text = "High Park"

            let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
            
            let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
            let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation: MKPointAnnotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = "High Park"

            self.mapView.addAnnotation(annotation)
        }
        if randomLoc == "hangout" {
            let latitude = 43.64241837384692
            let longitude = -79.3859736076201
            lblOutdoorActivity.text = "Ripley's Aquarium of Canada"

            let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
            
            let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
            let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation: MKPointAnnotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = "Ripley's Aquarium of Canada"

            self.mapView.addAnnotation(annotation)
        
        }
        if randomLoc == "running track" {
            let latitude = 43.68058119852502
            let longitude = -79.40405219491038
            lblOutdoorActivity.text = "Roycroft Park Lands"

            let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
            
            let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
            let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation: MKPointAnnotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = "Roycroft Park Lands"

            self.mapView.addAnnotation(annotation)
        }
        if randomLoc == "paintball" {
            let latitude = 43.70365967562423
            let longitude = -79.45592088127125
            lblOutdoorActivity.text = "Sgt Splatters Paintball"

            let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
            
            let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
            let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation: MKPointAnnotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = "Sgt Splatters Paintball"

            self.mapView.addAnnotation(annotation)
        }
        if randomLoc == "biking trail" {
            let latitude = 43.63681690164043
            let longitude = -79.46531656287296
            lblOutdoorActivity.text = "Sunnyside Bike Park"

            let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
            
            let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
            let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation: MKPointAnnotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = "Sunnyside Bike Park"

            self.mapView.addAnnotation(annotation)

        }
        if randomLoc == "shopping" {
            let latitude = 43.655838139429626
            let longitude = -79.43569939132914
            lblOutdoorActivity.text = "Dufferin Mall"

            let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
            
            let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
            let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation: MKPointAnnotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = "Dufferin Mall"

            self.mapView.addAnnotation(annotation)
        }
        if randomLoc == "massage therapy" {
            let latitude = 43.66524825495547
            let longitude = -79.41203234539495
            lblOutdoorActivity.text = "Ted Thomas Registered Massage Therapist"

            let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
            
            let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
            let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
            self.mapView.setRegion(region, animated: true)
            
            let annotation: MKPointAnnotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = "Ted Thomas Registered Massage Therapist"

            self.mapView.addAnnotation(annotation)
        }
        if randomLoc == "" {
            let latitude = 43.6705
            let longitude = -79.3936
            lblOutdoorActivity.text = "Casa Loma"

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
