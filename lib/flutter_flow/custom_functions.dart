import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<bool> showSearch(
  List<String> textSearchFor,
  List<String> textSearchin,
) {
  List<bool> results = [];
  for (var searchText in textSearchFor) {
    results.add(textSearchin.contains(searchText));
  }
  return results;
}

bool showsearchresult(
  String textsearchfor,
  String textserachin,
) {
  return textserachin.contains(textsearchfor);
}
