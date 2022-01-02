import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoder2/geocoder2.dart';

void main() {
  runApp(const AddressScreen());
}

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  var locationMessage = 'address here';
  String latitude = '';
  String longitude = '';

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  // function for getting the current location
  // but before that you need to add this permission!
  void getCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    var lat = position.latitude;
    var long = position.longitude;

    FetchGeocoder fetchGeocoder = await Geocoder2.getAddressFromCoordinates(
        latitude: lat,
        longitude: long,
        googleMapApiKey: "AIzaSyB89CSTjbHqmJRpkrhw6No2bCszBgLvQ8s");
    var first = fetchGeocoder.results.first;
    print(first.formattedAddress);

    // passing this to latitude and longitude strings
    latitude = "$lat";
    longitude = "$long";

    setState(() {
      locationMessage = first.formattedAddress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Enter Your Address'),
              SizedBox(height: 100.0),
              Text(locationMessage),
              SizedBox(height: 60.0),
              TextButton(
                onPressed: () {
                  _determinePosition();
                  getCurrentLocation();
                },
                child: Text('Get Your Address'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
