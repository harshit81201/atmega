import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import 'booking_details_info.dart';
import '../../../../common/primary_button.dart';

/// Card widget containing the main booking details
/// Displays car image, type, booking information, and payment button
/// Now responsive for different screen sizes
class BookingDetailsCard extends StatelessWidget {
  /// Type of car booked (e.g., "Sedan", "SUV", etc.)
  final String carType;
  
  /// Optional car image asset path - uses placeholder if not provided
  final String? carImagePath;
  
  /// Callback function when card is tapped
  final VoidCallback? onTap;
  
  /// Callback function when payment button is pressed
  final VoidCallback? onPaymentPressed;

  const BookingDetailsCard({
    super.key,
    required this.carType,
    this.carImagePath,
    this.onTap,
    this.onPaymentPressed,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;
    final isDesktop = screenWidth > 1024;
    
    // Responsive sizing
    final cardPadding = isDesktop ? 32.0 : isTablet ? 28.0 : 24.0;
    final carImageHeight = isDesktop ? 140.0 : isTablet ? 120.0 : 100.0;
    final carIconSize = isDesktop ? 70.0 : isTablet ? 60.0 : 50.0;
    final carTypeFontSize = isDesktop ? 22.0 : isTablet ? 20.0 : 18.0;
    final borderRadius = isDesktop ? 24.0 : isTablet ? 22.0 : 20.0;
    final spacing1 = isDesktop ? 20.0 : isTablet ? 18.0 : 16.0;
    final spacing2 = isDesktop ? 32.0 : isTablet ? 28.0 : 24.0;
    
    return GestureDetector(
      onTap: onTap,
      child: Card(
        // Explicit white background to prevent Material 3 tinting
        color: Colors.white,
        surfaceTintColor: Colors.transparent, // Prevents Material 3 surface tint
        elevation:20,
        margin: EdgeInsets.all(isDesktop ? 8.0 : isTablet ? 6.0 : 2.0), // Adjust margin based on screen size
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Padding(
          padding: EdgeInsets.all(cardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Car image placeholder or actual image
              Container(
                height: carImageHeight,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.backgroundGrey,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: carImagePath != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          carImagePath!,
                          fit: BoxFit.contain,
                        ),
                      )
                    : Icon(
                        Icons.directions_car,
                        size: carIconSize,
                        color: AppColors.lightGrey,
                      ),
              ),
              
              SizedBox(height: spacing1),
              
              // Car type label
              Text(
                carType,
                style: TextStyle(
                  fontSize: carTypeFontSize,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkGrey,
                ),
                textAlign: TextAlign.center,
              ),
              
              SizedBox(height: spacing2),
              
              // Part 3: Booking details information
              const BookingDetailsInfo(),
              
              SizedBox(height: spacing2),
              
              // Payment button inside the card
              PrimaryButton(
                text: 'Make a Payment',
                onPressed: onPaymentPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}