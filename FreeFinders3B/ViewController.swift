//
//  ViewController.swift
//  FreeFinders3B
//
//  Created by William Zeng on 11/7/22.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet private var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.insetsLayoutMarginsFromSafeArea = false
        let initialLocation = CLLocation(latitude: 41.7886, longitude: 87.5987)
        mapView.centerToLocation(initialLocation)
        // Do any additional setup after loading the view.
    }


}

private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}


