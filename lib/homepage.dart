import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_alarm_app/clock_view.dart';

var now = DateTime.now();
var nowMinute = now.minute.toString().padLeft(2, "0");
var nowHour = now.hour.toString().padLeft(2, "0");
var nowDate = now.day.toString();
var nowDay = now.weekday;
var nowMonth = now.month;


String determineDay(){
  if (nowDay == 1) {
    return "Sunday";
  }
  if (nowDay == 2) {
    return "Monday";
  }
  if (nowDay == 3) {
    return "Tuesday";
  }
  if (nowDay == 4) {
    return "Wednesday";
  }
  if (nowDay == 5) {
    return "Thursday";
  }
  if (nowDay == 6) {
    return "Friday";
  }
  if (nowDay == 7) {
    return "Saturday";
  }
  else {
    return "error";
  }
}
String determineMonth(){
  if (nowMonth == 1) {
    return "January";
  }
  if (nowMonth == 2) {
    return "February";
  }
  if (nowMonth == 3) {
    return "March";
  }
  if (nowMonth == 4) {
    return "April";
  }
  if (nowMonth == 5) {
    return "May";
  }
  if (nowMonth == 6) {
    return "June";
  }
  if (nowMonth == 7) {
    return "July";
  }
  if (nowMonth == 8) {
    return "August";
  }
  if (nowMonth == 9) {
    return "September";
  }
  if (nowMonth == 10) {
    return "October";
  }
  if (nowMonth == 11) {
    return "November";
  }
  if (nowMonth == 12) {
    return "December";
  }

  else {
    return "error";
  }
}
String weekDay = determineDay();
String month = determineMonth();

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF2D2F41),
      body: Container(
        alignment: Alignment.center,
        color: Color(0xFF2D2F41),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClockInfo(),
            ClockView(),
          ],
        ),
      ),
    );
  }

}
class ClockInfo extends StatefulWidget {
  const ClockInfo({Key? key}) : super(key: key);

  @override
  _ClockInfoState createState() => _ClockInfoState();
}

class _ClockInfoState extends State<ClockInfo> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer){
      setState(() {
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 110, 0, 20),
          child: Text(
            nowHour + ":" + nowMinute,
            style: TextStyle(
                fontSize: 60,
                color:  Colors.white
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            weekDay[0]+
                weekDay[1]+
                weekDay[2] + ", " + nowDate + " " + month[0] + month[1] + month[2] ,
            style: TextStyle(
                fontSize: 20,
                color:  Colors.white
            ),
          ),
        ),
      ],
    );
  }
}
