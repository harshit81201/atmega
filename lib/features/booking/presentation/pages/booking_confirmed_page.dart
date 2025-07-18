import 'package:flutter/material.dart';
import '../widgets/booking_header.dart';
import '../../../../core/constants/app_colors.dart';

/// Main page for displaying booking confirmation
/// Currently implements Part 1 - Header section only
class BookingConfirmedPage extends StatelessWidget {
  /// Booking reference number passed to the page
  final String bookingReference;

  const BookingConfirmedPage({
    super.key,
    this.bookingReference = '#164112511254', // Default reference from screenshot
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundGrey,
      body: SafeArea(
        child: Column(
          children: [
            // Part 1: Header section with success icon and booking confirmation
            BookingHeader(
              bookingReference: bookingReference,
            ),
            
            // Expanded area for future content (Parts 2-4)
            // This will contain the booking details card and payment button
            Expanded(
              child: Container(
                width: double.infinity,
                color: AppColors.backgroundGrey,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      'Booking details',
                      style: TextStyle(
                        color: AppColors.darkGrey,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}