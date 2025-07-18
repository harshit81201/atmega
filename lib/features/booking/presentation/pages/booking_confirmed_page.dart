import 'package:flutter/material.dart';
import '../widgets/booking_header.dart';
import '../widgets/booking_details_card.dart';
import '../../../../core/constants/app_colors.dart';

/// Main page for displaying booking confirmation
/// Layout with card overlapping the green header as shown in screenshot
class BookingConfirmedPage extends StatelessWidget {
  /// Booking reference number passed to the page
  final String bookingReference;
  
  /// Type of car that was booked
  final String carType;

  const BookingConfirmedPage({
    super.key,
    this.bookingReference = '#164112511254',
    this.carType = 'Sedan',
  });

  /// Show payment initiated snackbar
  void _showPaymentDialog(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Payment process initiated!'),
        backgroundColor: AppColors.successGreen,
        duration: Duration(seconds: 3),
      ),
    );
  }

  /// Show booking details when card is tapped
  void _showBookingDetails(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Booking Details: $carType - $bookingReference\nTotal: ₹1,430'),
        backgroundColor: AppColors.darkGrey,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Light grey background
      body: SafeArea(
        child: Stack(
          children: [
            // Background layout with green header and grey bottom
            Column(
              children: [
                // Green header section
                BookingHeader(
                  bookingReference: bookingReference,
                ),
                // Grey background area
                Expanded(
                  child: Container(
                    color: const Color(0xFFF5F5F5),
                  ),
                ),
              ],
            ),
            
            // Overlapping card positioned from the bottom of header
            Positioned(
              top: 260, // Position to overlap with green header
              left: 16,
              right: 16,
              bottom: 16,
              child: SingleChildScrollView(
                child: BookingDetailsCard(
                  carType: carType,
                  onTap: () => _showBookingDetails(context),
                  onPaymentPressed: () => _showPaymentDialog(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}