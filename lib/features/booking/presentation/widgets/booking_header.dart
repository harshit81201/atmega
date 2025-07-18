import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

/// Header widget for the booking confirmation page
/// Displays success icon, title, and booking reference number
class BookingHeader extends StatelessWidget {
  /// Booking reference code to display
  final String bookingReference;

  const BookingHeader({
    super.key,
    required this.bookingReference,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Full width green background for the header
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 24.0),
      decoration: const BoxDecoration(
        color: AppColors.successGreen,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Success checkmark icon
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: AppColors.white.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check,
              color: AppColors.white,
              size: 50,
            ),
          ),
          
          const SizedBox(height: 24),
          
          // "Booking Confirmed" title
          const Text(
            'Booking Confirmed',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 12),
          
          // Booking reference number
          Text(
            bookingReference,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}