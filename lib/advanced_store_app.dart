import 'package:advanced_store_app/core/app/connectivity_controller.dart';
import 'package:advanced_store_app/core/common/screens/no_network_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvancedStoreApp extends StatelessWidget {
  const AvancedStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              builder: (context, child) {
                return Scaffold(
                  body: Builder(
                    builder: (context) {
                      ConnectivityController.instance.init();
                      return child!;
                    },
                  ),
                );
              },
              home: Scaffold(
                appBar: AppBar(
                  title: const Text('My Store App'),
                  centerTitle: true,
                ),
              ),
            ),
          );
        } else {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: NoNetworkScreen(),
          );
        }
      },
    );
  }
}
