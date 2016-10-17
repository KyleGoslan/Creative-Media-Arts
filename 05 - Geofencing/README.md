# 05 - Geofencing

## Simulating Custom Locations

So far we've been using Xcode to simulate our locations from a list. 

However even this flexibility isn't going to be enough if we need to simulate movement which is what we're going to do. Luckily Xcode provides a relatively easy solution to this problem. We can provide it with a custom .gpx file full of location data to use. 

In this gpx file we can provide a list of "waypoints" for Xcode to simulate movement between. Each waypoint needs latitude and longitude information and optionally a name and timestamp. For example: 

```xml
<wpt lat="50.716098" lon="-1.875780">
    <name>Bournemouth Pier</name>
    <time>2014-09-24T14:55:33Z</time>
</wpt>
```

The name attribute is just a name associated with the point, in some cases you may want to pull this out to use it. The timestamp is more practical for what we're doing. Xcode will work out the time between the timestamps when simulating movement. You can leave it out and Xcode will just use a constant pace. 

The finished file might look something like this:

```xml 
<?xml version="1.0"?>
<gpx version="1.1" creator="Xcode">
    
    <wpt lat="50.719799" lon="-1.879439">
         <name>Gardens</name>
         <time>2014-09-24T14:55:30Z</time>
	</wpt>
    
    <wpt lat="50.716098" lon="-1.875780">
        <name>Bournemouth Pier</name>
        <time>2014-09-24T14:55:33Z</time>
    </wpt>
    
    <wpt lat="50.719914" lon="-1.843552">
        <name>Boscombe Pier</name>
        <time>2014-09-24T14:55:36Z</time>
    </wpt>
    
</gpx>
```

This simulates movement from Bournemouth Gardens to Bournemouth Pier to Boscombe Pier. You can have as many of these waypoints as you like to simulate whatever you need during development.

Once you have this done you'll be able to choose it from the location simulator when you run your app. It will be called whatever you named your file.

## Creating Regions

You can be notified when a user enters or exits a region by creating `CLRegion` objects. We'll always use `CLCircularRegion` objects to create an area with a radius. Firstly you need a `CLLocationCoordinate2D` object to work with. 

```swift 
let someLocation = CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0)
```

Now we can create a cirular region based on those coordinates, we'll also pass in how far from that location our user needs to be before we are notified (in meters), and a way to identify that region, which is just a string. Once we have that we can ask our `CLLocationManager` object to start listeneing for that region. 

```swift
let someRegion = CLCircularRegion(center: someLocation, radius: 500, identifier: "Some Place")
locationManager.startMonitoring(for: someRegion)
```

We can then get notified in a delegate method of the location manager object when our user enters or leaves one of those regions.

```swift
func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
    
}

func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion) {
    
}
```
















