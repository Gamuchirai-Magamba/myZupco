import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'package:location/location.dart';



import '../components/constants.dart';


class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {

  final LatLng _initialcameraposition = const LatLng(20.5937, 78.9629);
  late GoogleMapController _controller;
  final Location _location = Location();

  void _onMapCreated(GoogleMapController cntlr)
  {
    _controller = cntlr;
    _location.onLocationChanged.listen((l) {
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude!, l.longitude!),zoom: 15),
        ),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        elevation: 0,
        title:  Text("Your Location",
        style: GoogleFonts.poppins(
          color: altPrimaryColor,
              fontSize: 23
        ),),
        centerTitle: true,
        leading: IconButton(
          icon:  const Icon(LineIcons.undo, color: altPrimaryColor,size: 20,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(target: _initialcameraposition),
              mapType: MapType.normal,
              onMapCreated: _onMapCreated,
              myLocationEnabled: true,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                  height: size.height*0.20,
                  width: size.width*0.99,
                  decoration: const BoxDecoration(
                      color: altPrimaryColor,
                    border: Border(
                      top: BorderSide(width: 2.0,color: kPrimaryColor2)
                    ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     
                         SizedBox(
                          width: size.width*0.06,
                          height: size.width*0.2,
                          child: TextFormField(
                              autofocus: false,
                              keyboardType: TextInputType.streetAddress,
                              textInputAction: TextInputAction.go,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                                hintText: "Destination",
                                hintStyle:  GoogleFonts.poppins( color: Colors.grey),
                                focusedBorder:  const OutlineInputBorder(
                                  borderSide: BorderSide(color: kPrimaryColor2, width: 2.0),
                                ),
                                enabledBorder:  const OutlineInputBorder(
                                  borderSide: BorderSide(color: kPrimaryColor2, width: 2.0),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:  const BorderSide(color: kPrimaryColor2, width: 15.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              )),
                        ),
                      
                    
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }


}