import 'package:flutter/material.dart';

class AvancedStoreApp extends StatelessWidget {
  const AvancedStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(appBar: AppBar(title: const Text('My Store App'),),)
    );
  }
}