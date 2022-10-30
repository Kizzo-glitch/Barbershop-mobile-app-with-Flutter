import 'package:flutter/material.dart';
import 'google_maps.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  MapType _currentMapType = MapType.normal;

  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal ? MapType.satellite : MapType.normal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
      // GoogleMap(
      //   onMapCreated: _onMapCreated,
      //   mapType: _currentMapType,
      //   initialCameraPosition: CameraPosition(
      //     target: _center,
      //     zoom: 11.0,
      //   ),
      // ),
      Container(
          decoration: BoxDecoration(
              image: DecorationImage(
        image: AssetImage("assets/map.jpg"),
        fit: BoxFit.cover,
      ))),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.topRight,
          child: FloatingActionButton(
            onPressed: _onMapTypeButtonPressed,
            materialTapTargetSize: MaterialTapTargetSize.padded,
            backgroundColor: Colors.green,
            child: const Icon(Icons.map, size: 36.0),
          ),
        ),
      ),
      Align(
        alignment: Alignment.topCenter,
        child: Container(
          padding: EdgeInsets.only(top: 520, ),
        //height: 50,
          // margin: EdgeInsets.symmetric(
          //   vertical: 300,
          // ),
          child: ListView(children: [
            Card(
                child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.
                  children: [
              Text('1',
              style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                    //color: Colors.red,
                  )),
              Text('Low Fade Cut',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                    //color: Colors.red,
                  )),
              Text('R 150.00',
              style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                    //color: Colors.red,
                  ))
            ])),
            Card(
                child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.
                  children: [
              Text('1',
              style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                    //color: Colors.red,
                  )),
              Text('Legendary oil',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                    //color: Colors.red,
                  )),
              Text('R 250.00',
              style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                    //color: Colors.red,
                  ))
            ])),
          ]))),
      Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
              width: double.infinity,
              height: 35,
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green,
                  shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  shadowColor: Colors.red,
                  elevation: 20,
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text('Delivered',
                    style: TextStyle(
                      color: Colors.red,
                    )),
              )))
    ]));
  }
}
