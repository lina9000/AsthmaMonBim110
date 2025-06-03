import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? timedependentgreating() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Good Morning!';
  }
  if (hour < 17) {
    return 'Good Afternoon!';
  }
  return 'Good Evening!';
}

int birthdaytoage(DateTime? birthday) {
  if (birthday == null) return 10000;

  final now = DateTime.now();
  int age = now.year - birthday.year;

  if (now.month < birthday.month ||
      (now.month == birthday.month && now.day < birthday.day)) {
    age--;
  }

  return age;
}

String? nameOfTheDay(DateTime? currenttime) {
  // give me a fuction that returns the name of the day imputted from the current time
  if (currenttime == null) return null;
  return DateFormat('EEEE').format(currenttime);
}

String? makeLowercaseString(String? stringin) {
  // can you make a fuction that makes evrything lower case and returns the new string
  return stringin?.toLowerCase();
}

DateTime? datemin(DateTime? currenttime) {
  // can you make a fuction that returnes the beinging of the sate in time stamp format
  if (currenttime == null) return null;

  DateTime startOfState =
      DateTime(currenttime.year, currenttime.month, currenttime.day, 0, 0, 0);

  return startOfState;
}

DateTime? dateMax(DateTime? currenttime) {
  // can you make a fuction that returns the date end  in timetamp fomat
  if (currenttime == null) return null;

  DateTime endOfState = DateTime(
      currenttime.year, currenttime.month, currenttime.day, 23, 59, 59);

  return endOfState;
}

List<double>? makedatadouble(List<int>? actscore) {
  // can you make me a fccution tha looks at my list of intergers and gve me bacck a list of doubles
  if (actscore == null) return null;
  return actscore.map((score) => score.toDouble()).toList();
}

List<double>? makeintegeradouble(List<int>? interger) {
  // make an intergerlist into a double list
  if (interger == null) return null;
  return interger.map((value) => value.toDouble()).toList();
}

String? initiealextraction(String? fullname) {
  // can you make me cod ethat takes a name first and last and extract the intiels to form a 2 letter string
  if (fullname == null || fullname.isEmpty) return null;

  List<String> names = fullname.split(' ');
  if (names.length < 2) return null;

  String initials = names[0][0].toUpperCase() + names[1][0].toUpperCase();
  return initials;
}

String? drocslastname(String? drocsnname) {
  // can you give me code that will return doe from a string that contain jane doe but ultimately will return doe if it is jane mary doe
  if (drocsnname == null || drocsnname.isEmpty) return null;

  List<String> names = drocsnname.split(' ');
  return names.length > 1 ? names.last : null;
}

DateTime? slideryeartobirthday(double? slideryear) {
  // intake an double with no decimal points and return the first date of that year in ddatetime veirables format
  if (slideryear == null) return null;
  return DateTime(slideryear.toInt(), 1, 1);
}

double? devideby100(int? veriablein) {
  // divider an interger by 100 return double
  if (veriablein == null) return null;
  return veriablein / 100.0;
}
