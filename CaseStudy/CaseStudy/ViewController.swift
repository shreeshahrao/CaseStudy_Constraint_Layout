//
//  ViewController.swift
//  CaseStudy
//
//  Created by ShreeshaRao on 27/02/22.
//

import UIKit
import MapKit
import WebKit
class ViewController: UIViewController  {
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    @IBOutlet weak var webView: WKWebView!
    
    // Latitude and Longitude used for mapView
    
    let latitude =  41.902782
    let longitude = 12.496366
    
    let urlString = URL(string: "https://en.wikipedia.org/wiki/History_of_Rome") // url request for webview
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        annotation.subtitle = "City Of Seven Hills" // Click on the Pin to see the discription
        mapView.addAnnotation(annotation)
        annotation.title = "Rome"
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
        let request = URLRequest(url: self.urlString!)
        webView.load(request)
        
        webView.allowsBackForwardNavigationGestures = true // Allows Forward and Back Navigation
    }


}

