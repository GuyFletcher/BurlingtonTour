//
//  LocationViewController.swift
//  burlington
//
//  Created by Hart, Fletcher on 3/25/18.
//  Copyright © 2018 Hart, Fletcher. All rights reserved.
//

import UIKit
import MapKit

class LocationViewController: UIViewController{
    

    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var locImage: UIImageView!
    
    var location: String = ""
    var sentImage: UIImage = UIImage()
    var favorite = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locImage.image = sentImage

        let request = MKLocalSearchRequest()
        request.naturalLanguageQuery = location
        
        request.region = mapView.region
        
        getCoord(forAddress: location) {
            (loc) in
            guard let loc = loc else {
                // Handle error here.
                return
            }
            
            let span = MKCoordinateSpanMake(0.05, 0.05)
            let region = MKCoordinateRegion(center: loc, span: span)
            self.mapView.setRegion(region, animated: false)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = loc
            annotation.title = self.location
            self.mapView.addAnnotation(annotation)
            self.mapView.isZoomEnabled = true
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //below function taken from https://stackoverflow.com/questions/43918842/open-map-in-a-given-address-using-mapkit-and-swift
    func getCoord(forAddress address: String, completion: @escaping (CLLocationCoordinate2D?) -> Void) {
        let geocoder = CLGeocoder()
            geocoder.geocodeAddressString(address) {
            (placemarks, error) in
            guard error == nil else {
                print("Geocoding error: \(error!)")
                completion(nil)
                return
            }
            completion(placemarks?.first?.location?.coordinate)
        }
    }
    
    func openMapForPlace(lat: Double, long: Double) {
        
        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(lat, long)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = location
        mapItem.openInMaps(launchOptions: options)
    }
    
    @IBAction func Favorite(_ sender: Any) {
        
       favorite = !favorite
        
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
