import 'package:flutter/material.dart';
import 'features/booking/presentation/pages/booking_confirmed_page.dart';
import 'core/constants/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATmega Booking App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryGreen),
        useMaterial3: true,
      ),
      home: const BookingConfirmedPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
