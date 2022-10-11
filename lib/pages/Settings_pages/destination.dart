import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

import '../../components/constants.dart';
import '../../models/UserModel.dart';



class Destination extends StatefulWidget {
  const Destination({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DestinationState createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
 String dropdownvalue = 'Select Taxi';  
 
  // List of items in our dropdown menu
  var items = [   
    'ZW1242',
    'ZW1234',
    'ZW3456',
    'ZW1212',
    'ZW3412',
  ];
  @override
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
 appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        elevation: 0,
        title:  Text("Set Destination",
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
              const SizedBox(height: 20,),

                    TextFormField(
                        autofocus: false,
                        //controller: emailController,
                        keyboardType: TextInputType.streetAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Enter Valid Destination");
                          }
                        return null;
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Destinaion",
                          hintStyle:  GoogleFonts.poppins( color: Colors.grey),
                          focusedBorder:  const OutlineInputBorder(
                            borderSide: BorderSide(color: kPrimaryColor2, width: 2.0),
                          ),
                          enabledBorder:  const OutlineInputBorder(
                            borderSide: BorderSide(color: kPrimaryColor2, width: 2.0),
                          ),
                          border: OutlineInputBorder(
                              borderSide:  const BorderSide(color: kPrimaryColor2, width: 15.0),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        )),
                        SizedBox(height: size.height*0.04,),
                          Column(
              children: [
                Card(
                    color: Colors.white,
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(

                      onTap: () {},
    
                      contentPadding:
                          const EdgeInsets.only(right: 30, left: 36),
                      title: Text(
                        "Save Destination".toUpperCase(),
                        style: GoogleFonts.poppins(color: kPrimaryColor, fontWeight: FontWeight.w700),
                      ),
                      leading: const Icon(
                        LineIcons.locationArrow,
                        color: kPrimaryColor2,
                        size: 30,
                      ),
                    )),
               
              ],
            )





          ]
    )));
  }
}
