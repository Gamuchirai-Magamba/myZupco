import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:my_zupco/models/TransportDetailsModel.dart';

import '../components/constants.dart';

import '../models/UserModel.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 15.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Taxi Schedule",
                style: GoogleFonts.lato(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 25)),
            SizedBox(height: size.height * 0.02),
            StreamBuilder<List<TransportDetailsModel>>(
              stream: getTransport(),
              builder: (context, snapshot) {
              
                  if (snapshot.hasError) {
                    return const Center(child: Text("Something Went Wrong "));
                  } else if (snapshot.hasData) {
                    final schedule = snapshot.data!;

                    return ListView(
                      children: schedule.map(buildDetails).toList(),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
              
               
              },
            )
          ],
        ),
      ),
    );
  }

  Stream<List<TransportDetailsModel>> getTransport() =>
      FirebaseFirestore.instance.collection('routeDetails').snapshots().map(
          (snapshot) => snapshot.docs
              .map((doc) => TransportDetailsModel.fromMap(doc.data()))
              .toList());

  Widget buildDetails(TransportDetailsModel model) => ListTile(
        leading: const Icon(LineIcons.info),
        title: Column(
          children: [
            Row(
              children: [
                const Text("Taxi:"),
                const SizedBox(
                  height: 25,
                ),
                Text(model.driver!)
              ],
            ),
            Row(
              children: [
                const Text("Destination:"),
                const SizedBox(
                  height: 25,
                ),
                Text(model.busStopLocation!)
              ],
            ),
            Row(
              children: [
                const Text("Passengers:"),
                const SizedBox(
                  height: 25,
                ),
                Text("${model.passengers}")
              ],
            )
          ],
        ),
      );
}
