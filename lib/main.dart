import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/bmi_screen.dart';
import 'screens/bmi_result_screen.dart';
import 'screens/calories_screen.dart';
import 'screens/calories_result_screen.dart';
import 'screens/blood_volume_screen.dart';
import 'screens/blood_volume_result_screen.dart';
import 'screens/ideal_weight_screen.dart';
import 'screens/ideal_weight_result_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health App Low-Fi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/bmi': (context) => const BMIScreen(),
        '/bmi_result': (context) => const BMIResultScreen(),
        '/calories': (context) => const CaloriesScreen(),
        '/calories_result': (context) => const CaloriesResultScreen(),
        '/blood_volume': (context) => const BloodVolumeScreen(),
        '/blood_volume_result': (context) => const BloodVolumeResultScreen(),
        '/ideal_weight': (context) => const IdealWeightScreen(),
        '/ideal_weight_result': (context) => const IdealWeightResultScreen(),
      },
    );
  }
}
