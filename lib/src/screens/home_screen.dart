import 'dart:convert';

import 'package:assignments/src/models/flight_info.dart';
import 'package:assignments/src/themes/app_sizes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<FlightInfo>> _appData = fetchData();

  Future<List<FlightInfo>> fetchData() async {
    try {
      final response = await Dio().get(
        // 'https://fatima11.000webhostapp.com/test.php',
        'https://fatima11.000webhostapp.com/getairport.php',
      );

      if (response.data == null) {
        throw Exception('Failed to load data.');
      }

      final json = jsonDecode(response.data.toString()) as List<dynamic>;

      return json
          .map((e) => FlightInfo.fromJson(e as Map<String, dynamic>))
          .toList(growable: false);
    } catch (error) {
      debugPrint(error.toString());
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Airport Data App'),
      ),
      body: FutureBuilder(
        future: _appData,
        builder: (_, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.active:
            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator());
            case ConnectionState.done:
              if (snapshot.hasError || snapshot.data == null) {
                return Center(
                  child: ErrorTextButton(
                    error: snapshot.error.toString(),
                    onPressed: () {
                      if (!mounted) return;
                      setState(() {
                        _appData = fetchData();
                      });
                    },
                  ),
                );
              }

              return ListView.builder(
                itemCount: snapshot.data?.length ?? 0,
                padding: const EdgeInsets.all(AppSizes.s8),
                itemBuilder: (_, index) {
                  final data = snapshot.data?[index];

                  if (data == null) return const SizedBox();

                  return FlightInfoTile(data: data);
                },
              );
          }
        },
      ),
    );
  }
}

class FlightInfoTile extends StatelessWidget {
  const FlightInfoTile({super.key, required this.data});

  final FlightInfo data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '${data.flightNumber} - ${data.airlineName}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        '${data.airportCode}, ${data.airportName}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
        '${data.departureTime.humanize} - ${data.arrivalTime.humanize}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ErrorTextButton extends StatelessWidget {
  const ErrorTextButton({super.key, required this.error, this.onPressed});

  final String error;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          error,
          style: const TextStyle(color: Colors.red),
        ),
        TextButton(
          onPressed: onPressed,
          child: const Text('Retry'),
        ),
      ],
    );
  }
}
