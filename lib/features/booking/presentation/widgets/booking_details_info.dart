import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import 'booking_detail_row.dart';

/// Widget containing all booking details information
/// Displays a structured list of booking summary data
/// Now responsive for different screen sizes
class BookingDetailsInfo extends StatelessWidget {
  /// Total kilometers for the booking
  final String totalKilometers;
  
  /// Base price for the rental
  final String basePrice;
  
  /// Price per kilometer
  final String perKmRate;
  
  /// Driver charge amount
  final String driverCharge;
  
  /// Total fare amount
  final String totalFare;

  const BookingDetailsInfo({
    super.key,
    this.totalKilometers = '45km',
    this.basePrice = '₹170',
    this.perKmRate = '₹ 2',
    this.driverCharge = '₹1,170',
    this.totalFare = '₹1,430',
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;
    final isDesktop = screenWidth > 1024;
    
    // Responsive sizing
    final containerPadding = isDesktop ? 24.0 : isTablet ? 22.0 : 20.0;
    final borderRadius = isDesktop ? 16.0 : isTablet ? 14.0 : 12.0;
    final spacing = isDesktop ? 12.0 : isTablet ? 10.0 : 8.0;
    
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(containerPadding),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Individual booking detail rows
          BookingDetailRow(
            label: 'Total Kilometers',
            value: totalKilometers,
          ),
          
          BookingDetailRow(
            label: 'Base Price',
            value: basePrice,
          ),
          
          BookingDetailRow(
            label: 'Per Kilometer',
            value: perKmRate,
          ),
          
          BookingDetailRow(
            label: 'Driver Charge',
            value: driverCharge,
          ),
          
          // Divider line before total
          Padding(
            padding: EdgeInsets.symmetric(vertical: spacing),
            child: const Divider(
              color: AppColors.lightGrey,
              thickness: 1,
            ),
          ),
          
          // Total fare (emphasized)
          BookingDetailRow(
            label: 'Total Fair',
            value: totalFare,
            isEmphasized: true,
          ),
        ],
      ),
    );
  }
}