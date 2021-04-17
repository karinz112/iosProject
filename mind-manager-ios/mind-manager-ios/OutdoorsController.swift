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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomLoc = locationArray.randomElement()
        
        if randomLoc == "fishing" {
            let centerLocation = CLLocation(latitude: 43.64106388801521, longitude: -79.46687074751708)
            goToLocation(location: centerLocation)
            lblOutdoorActivity.text = "Grenadier Pond"
            
            mapView.showsUserLocation = true
        }
        if randomLoc == "parks" {
            let centerLocation = CLLocation(latitude: 43.64655677959097, longitude: -79.46369134087968)
            goToLocation(location: centerLocation)
            lblOutdoorActivity.text = "High Park"
            
            mapView.showsUserLocation = true
        }
        if randomLoc == "hangout" {
            let centerLocation = CLLocation(latitude: 43.64241837384692, longitude: -79.3859736076201)
            goToLocation(location: centerLocation)
            lblOutdoorActivity.text = "Ripley's Aquarium of Canada"
            
            mapView.showsUserLocation = true
        }
        if randomLoc == "running track" {
            let centerLocation = CLLocation(latitude: 43.68058119852502, longitude: -79.40405219491038)
            goToLocation(location: centerLocation)
            lblOutdoorActivity.text = "Roycroft Park Lands"
            
            mapView.showsUserLocation = true
        }
        if randomLoc == "paintball" {
            let centerLocation = CLLocation(latitude: 43.70365967562423, longitude: -79.45592088127125)
            goToLocation(location: centerLocation)
            lblOutdoorActivity.text = "Sgt Splatters Paintball"
            
            mapView.showsUserLocation = true
        }
        if randomLoc == "biking trail" {
            let centerLocation = CLLocation(latitude: 43.63681690164043, longitude: -79.46531656287296)
            goToLocation(location: centerLocation)
            lblOutdoorActivity.text = "Sunnyside Bike Park"
            
            mapView.showsUserLocation = true
        }
        if randomLoc == "shopping" {
            let centerLocation = CLLocation(latitude: 43.655838139429626, longitude: -79.43569939132914)
            goToLocation(location: centerLocation)
            lblOutdoorActivity.text = "Dufferin Mall"
            
            mapView.showsUserLocation = true
        }
        if randomLoc == "massage therapy" {
            let centerLocation = CLLocation(latitude: 43.66524825495547, longitude: -79.41203234539495)
            goToLocation(location: centerLocation)
            lblOutdoorActivity.text = "Ted Thomas Registered Massage Therapist"
            
            mapView.showsUserLocation = true
        }
        if randomLoc == "" {
            let centerLocation = CLLocation(latitude: 43.6705, longitude: -79.3936)
            goToLocation(location: centerLocation)
            lblOutdoorActivity.text = "Casa Loma"
            
            mapView.showsUserLocation = true
        }
        
    }
    
    func goToLocation(location: CLLocation) {
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: location.coordinate, span: span)
        mapView.setRegion(region, animated: false)
    }

}
