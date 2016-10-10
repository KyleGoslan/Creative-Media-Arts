import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController {
  
  @IBOutlet weak var mapView: MKMapView!
  
  let locationManager = CLLocationManager()
  let geocoder = CLGeocoder()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    locationManager.requestAlwaysAuthorization()
    locationManager.delegate = self
    locationManager.startUpdatingLocation()
    mapView.userTrackingMode = .follow
    
    let location = CLLocation(latitude: 37.33233141, longitude: -122.0312186)
    geocoder.reverseGeocodeLocation(location) { placemark, error in
      
    }
  }
  
  @IBAction func follow(_ sender: AnyObject) {
    mapView.setUserTrackingMode(.follow, animated: true)
  }
  
}

extension ViewController: CLLocationManagerDelegate {
  
  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    
    guard let location = locations.last else { return }
    
    print(location)
    
  }
  
  
  
  
}







