import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

import '../components/constants.dart';

import '../models/UserModel.dart';


class JoinQueue extends StatefulWidget {
  const JoinQueue({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _JoinQueueState createState() => _JoinQueueState();
}

class _JoinQueueState extends State<JoinQueue> {
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
        title: Text(
          "Join Queue",
          style: GoogleFonts.poppins(color: altPrimaryColor, fontSize: 23),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            LineIcons.undo,
            color: altPrimaryColor,
            size: 20,
          ),
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
          children: [
            Container(
              height: size.height * 0.15,
              width: size.width,
              decoration: const BoxDecoration(
                  color: altPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Available Taxis",
                      style: GoogleFonts.lato(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 25)),
                  Center(
                      child: Text("Will contain a horizontal list of taxis",
                          style: GoogleFonts.lato(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w300,
                              fontSize: 18))),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Container(
                height: size.height * 0.35,
                width: size.width,
                decoration: const BoxDecoration(
                    color: kPrimaryColor2,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(" Taxi details",
                        style: GoogleFonts.lato(
                            color: altPrimaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 25)),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text("Zupco number",
                                            style: GoogleFonts.lato(
                                                color: altPrimaryColor,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 21)),
                                        SizedBox(
                                          height: size.height * 0.03,
                                        ),
                                        Text("ZW1242",
                                            style: GoogleFonts.lato(
                                                color: altPrimaryColor,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 18)),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text("Passengers",
                                              style: GoogleFonts.lato(
                                                  color: altPrimaryColor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 21)),
                                          SizedBox(
                                            height: size.height * 0.03,
                                          ),
                                          Text("0",
                                              style: GoogleFonts.lato(
                                                  color: altPrimaryColor,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 18)),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text("Destination",
                                            style: GoogleFonts.lato(
                                                color: altPrimaryColor,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 21)),
                                        SizedBox(
                                          height: size.height * 0.03,
                                        ),
                                        Text("Harare",
                                            style: GoogleFonts.lato(
                                                color: altPrimaryColor,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 18)),
                                      ],
                                    ),
                                  ],
                                ),
                              
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text("Bus-Stop",
                                              style: GoogleFonts.lato(
                                                  color: altPrimaryColor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 21)),
                                          SizedBox(
                                            height: size.height * 0.03,
                                          ),
                                          Text("Example",
                                              style: GoogleFonts.lato(
                                                  color: altPrimaryColor,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 18)),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 12),
                    //   child: Row(
                    //     children: [
                    //       Column(
                    //         children: [
                    //           Text("Zupco number",
                    //               style: GoogleFonts.lato(
                    //                   color: altPrimaryColor,
                    //                   fontWeight: FontWeight.w500,
                    //                   fontSize: 21)),
                    //           SizedBox(
                    //             height: size.height * 0.03,
                    //           ),
                    //           Text("ZW1242",
                    //               style: GoogleFonts.lato(
                    //                   color: altPrimaryColor,
                    //                   fontWeight: FontWeight.w300,
                    //                   fontSize: 18)),
                    //         ],
                    //       ),
                    //       SizedBox(
                    //         width: size.width * 0.21,
                    //       ),
                    //       Column(
                    //         children: [
                    //           Text("Destination",
                    //               style: GoogleFonts.lato(
                    //                   color: altPrimaryColor,
                    //                   fontWeight: FontWeight.w500,
                    //                   fontSize: 21)),
                    //           SizedBox(
                    //             height: size.height * 0.03,
                    //           ),
                    //           Text("Harare",
                    //               style: GoogleFonts.lato(
                    //                   color: altPrimaryColor,
                    //                   fontWeight: FontWeight.w300,
                    //                   fontSize: 18)),
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 12),
                    //   child: Row(
                    //     children: [
                    //       Column(
                    //         children: [
                    //           Text("Number of passengers",
                    //               style: GoogleFonts.lato(
                    //                   color: altPrimaryColor,
                    //                   fontWeight: FontWeight.w500,
                    //                   fontSize: 21)),
                    //           SizedBox(
                    //             height: size.height * 0.03,
                    //           ),
                    //           Text("12",
                    //               style: GoogleFonts.lato(
                    //                   color: altPrimaryColor,
                    //                   fontWeight: FontWeight.w300,
                    //                   fontSize: 18)),
                    //         ],
                    //       ),
                    //       SizedBox(
                    //         width: size.width * 0.07,
                    //       ),
                    //       Column(
                    //         children: [
                    //           Text("Bus-Stop",
                    //               style: GoogleFonts.lato(
                    //                   color: altPrimaryColor,
                    //                   fontWeight: FontWeight.w500,
                    //                   fontSize: 21)),
                    //           SizedBox(
                    //             height: size.height * 0.03,
                    //           ),
                    //           Text(" Avenue",
                    //               style: GoogleFonts.lato(
                    //                   color: altPrimaryColor,
                    //                   fontWeight: FontWeight.w300,
                    //                   fontSize: 18)),
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    // ),
                  ],
                )),
            const SizedBox(
              height: 55,
            ),
            Column(
              children: [
                Card(
                    color: Colors.white,
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      onTap: () {},
                      subtitle: Text(
                        "Join Virtual Queue",
                        style: GoogleFonts.poppins(color: kPrimaryColor2),
                      ),
                      contentPadding:
                          const EdgeInsets.only(right: 30, left: 36),
                      title: Text(
                        "Join Queue".toUpperCase(),
                        style: GoogleFonts.poppins(
                            color: kPrimaryColor, fontWeight: FontWeight.w700),
                      ),
                      leading: const Icon(
                        LineIcons.bus,
                        color: kPrimaryColor2,
                        size: 30,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
