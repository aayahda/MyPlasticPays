import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BinLocation extends StatefulWidget {
  const BinLocation({Key? key}) : super(key: key);

  @override
  State<BinLocation> createState() => _BinLocationState();
}

class _BinLocationState extends State<BinLocation> {
  Set <Marker> _markers ={};

  void _onMapCreated(GoogleMapController controller){
    setState((){
      _markers.add(
        Marker(markerId: MarkerId("1"),
        position: LatLng(10.5544976,76.2232729),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan)
        ));
          _markers.add(
          Marker(markerId: MarkerId("2"),
      position: LatLng(10.5551598,76.2240561),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan)
      ),
      );
      _markers.add(
        Marker(markerId: MarkerId("3"),
            position: LatLng(10.5555751,76.2245011),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan)
        ),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0,left: 10),
                  child: Text("Welcome Aadhya,",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 18,fontStyle: FontStyle.italic),),
                ),
                Text("30 Points",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 30,color: Colors.black),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 60,right: 140,bottom: 10),
              child: Text("This week's reward is sponsored by ",style:TextStyle(fontStyle: FontStyle.italic,color: Colors.black45)),
            ),
            Container(margin: EdgeInsets.all(10),
                height: 100,width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: kElevationToShadow[9],
                ),
              child: Image.asset("Assets/starbucks.jpeg"),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10,top: 25),
              child: Text("Locate the bin ! ",style:TextStyle(fontStyle: FontStyle.italic,color: Colors.black45)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: kElevationToShadow[9],
                ),
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  markers: _markers,
                  initialCameraPosition:CameraPosition(
                  target: LatLng(10.5544976,76.2232729),
                  zoom: 16,
                ),

                ),
              ),
            )

          ],

        ),
      ),
    );
  }
}

