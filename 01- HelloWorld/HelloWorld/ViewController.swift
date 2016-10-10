import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

  @IBOutlet weak var myLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func buttonPress(_ sender: AnyObject) {
    myLabel.text = "Button Presses!!"
  }
  
}
