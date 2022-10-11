class TransportDetailsModel {
  String? uid;
  String? driver;
  String? busStopLocation;
  var passengers;
  DateTime? arrivalTime;


  TransportDetailsModel({this.uid, this.arrivalTime,this.busStopLocation,this.driver,this.passengers});
  TransportDetailsModel.fromMap(Map<String, dynamic> map) {
    uid = map["uid"];
    driver = map["driver"];
    busStopLocation = map["location"];
    passengers=map["passengers"];
    arrivalTime=map["arrivalTime"];
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "driver": driver,
      "location": busStopLocation,
      "passengers":passengers,
      "arrivalTime":arrivalTime
    };
  }
}