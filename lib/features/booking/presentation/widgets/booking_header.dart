import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

/// Header widget for the booking confirmation page
/// Displays success icon, title, and booking reference number
/// Now responsive for different screen sizes
class BookingHeader extends StatelessWidget {
  /// Booking reference code to display
  final String bookingReference;

  const BookingHeader({
    super.key,
    required this.bookingReference,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;
    final isDesktop = screenWidth > 1024;
    
    // Responsive padding and sizing
    final verticalPadding = isDesktop ? 80.0 : isTablet ? 70.0 : 60.0;
    final horizontalPadding = isDesktop ? 48.0 : isTablet ? 32.0 : 24.0;
    final iconSize = isDesktop ? 100.0 : isTablet ? 90.0 : 80.0;
    final checkIconSize = isDesktop ? 60.0 : isTablet ? 55.0 : 50.0;
    final titleFontSize = isDesktop ? 32.0 : isTablet ? 30.0 : 28.0;
    final subtitleFontSize = isDesktop ? 18.0 : isTablet ? 17.0 : 16.0;
    final spacing1 = isDesktop ? 32.0 : isTablet ? 28.0 : 24.0;
    final spacing2 = isDesktop ? 16.0 : isTablet ? 14.0 : 12.0;
    
    return Container(
      // Full width green background for the header
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding, 
        horizontal: horizontalPadding,
      ),
      decoration: const BoxDecoration(
        color: AppColors.successGreen,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Success checkmark icon
          Container(
            width: iconSize,
            height: iconSize,
            decoration: BoxDecoration(
              color: AppColors.white.withValues(alpha: 0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.check,
              color: AppColors.white,
              size: checkIconSize,
            ),
          ),
          
          SizedBox(height: spacing1),
          
          // "Booking Confirmed" title
          Text(
            'Booking Confirmed',
            style: TextStyle(
              color: AppColors.white,
              fontSize: titleFontSize,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          
          SizedBox(height: spacing2),
          
          // Booking reference number
          Text(
            bookingReference,
            style: TextStyle(
              color: AppColors.white,
              fontSize: subtitleFontSize,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}