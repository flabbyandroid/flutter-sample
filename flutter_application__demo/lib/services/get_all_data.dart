import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter_application__demo/models/all_data.dart';
import 'package:flutter_application__demo/services/rest_services.dart';

class GetAllData {
  static final GetAllData _instance = GetAllData._constructor();
  factory GetAllData() {
    return _instance;
  }

  GetAllData._constructor();
  final rest = RestService();

  // final testData =
}
