import 'dart:convert';

import 'package:assignments/src/models/flight_info.dart';
import 'package:assignments/src/models/test.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class FlightInfoService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://fatima11.000webhostapp.com/',
    ),
  );

  Future<Test> getTest() async {
    try {
      final response = await _dio.get(
        'test.php',
      );

      if (response.data == null) {
        throw Exception('Failed to load data.');
      }

      return Test.fromJson(response.data);
    } catch (error) {
      debugPrint(error.toString());
      rethrow;
    }
  }

  Future<List<FlightInfo>> getFlightInfo() async {
    try {
      final response = await _dio.get(
        'getairport.php',
      );

      if (response.data == null) {
        throw Exception('Failed to load data.');
      }

      // ? Api return a string instead of a list of json objects
      final json = jsonDecode(response.data.toString()) as List<dynamic>;

      return json
          .map((e) => FlightInfo.fromJson(e as Map<String, dynamic>))
          .toList(growable: false);
    } catch (error) {
      debugPrint(error.toString());
      rethrow;
    }
  }
}
