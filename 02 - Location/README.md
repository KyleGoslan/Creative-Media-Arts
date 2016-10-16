# 02 - User Location

##Permission

Reading device location is straight forward. But before we can start just taking peoples locations as we please, we do need to notify the user that we would like to do so and give them the opportunity to deny us access to this information. 

Luckily this is fairly straight forward our part. We need to make a small addition to our applications `info.plist` file. You'll find this file in the project navigator where your other files are. This is an XML file that contains some information about our app. 

We need to add a key to this file. The easiest way to do this is right click somewhere in the empty space in the bottom of the file and select "add row". We have one of two options for the first field:

+ NSLocationWhenInUseUsageDescription	
+ NSLocationAlwaysUsageDescription	

The first is if we only need to be using the location data when our application is active, the second is if we want to always have access to it, even when the application is running in the background. 

In the right had column you can put whatever you want. This is a message that will be displayed to the user when our application asked for permission use location data.

**Note** 
The permission alert is only shown the first time a location request is made. Users can then manage this on a per app basis in their phones settings. 


##Getting A Location

Apple make it easy enough for us to get a location. Unsurprisingly, it's part of the `CoreLocation` library, so we need to import that. Up at the top of your file along with the other import statement add:

```swift
import CoreLocation 
```

When we looked at geocoding, we created a `CLGeocoder` object to handle all that stuff for us. Just like that we're going to create a `CLLocationManager` object that makes dealing with device location a whole lot easier. So first we're going to create a property for one, somewhere in your view controller (outside of any methods, usually near the top) add:

```swift
let locationManager = CLLocationManager()
```

Our `locationManager` object now needs to ask permission to use the devices location information. In the `viewDidLoad` method add: 

```swift 
locationManager.requestWhenInUseAuthorization()
```

**Note**
There is also a `requestAlwaysAuthorization()` method. Which one you use here will depend on the change you made to the info.plist file. Read the permission notes if you haven't already. 


`CLLoactionManager` objects have a bunch of delegate methods which allow us to handle updates to the location, so we need to set our `locationManager` objects delegate. under the line you previously added (in the `viewDidLoad` method) add:

```swift
locationManager.delegate = self
```

By setting the the delegate property to `self` it says we're going to handle the delegate methods for the object in this `ViewController` class. Next up we need to some of these delegate methods.

We're going to do it in a class extension at the bottom of our file. While this isn't essential (we could just as easily implement the methods in the main body of our class), this is a nice habit to get into. In a small example like this the benefit is negligible, but can make your classes a lot clearer in larger projects. 

At the bottom of the file (outside **everything**) add:

```swift 
extension ViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    
        guard let location = locations.last else { return }

        print(location)
    
    }
    
}
```

This `locationManager...didUpdateLocations` method is whats called whenever our `CLLocationManager` object receives a new location update. It get an array of `CLLocation` objects (which we've used previously). Then were just pulling the last one out of the array, checking it's not `nil` with the `if let` syntax (optional chaining) and printing it out. 

Finally we just need to tell our `locationManager` instance to start sending the location updates to the delegate (in this case our view controller). Back up in the `viewDidLoad` method, right where you added the other lines, add: 

```swift
locationManager.startUpdatingLocation()
```

You should now get an output of locations to your log. 






