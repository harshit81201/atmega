import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

/// Individual row widget for displaying booking detail information
/// Reusable component for label-value pairs in the booking summary
/// Now responsive for different screen sizes
class BookingDetailRow extends StatelessWidget {
  /// Label text (e.g., "Total kilometers", "Base price")
  final String label;
  
  /// Value text (e.g., "120 km", "$50.00")
  final String value;
  
  /// Whether this row should be emphasized (e.g., total fare)
  final bool isEmphasized;

  const BookingDetailRow({
    super.key,
    required this.label,
    required this.value,
    this.isEmphasized = false,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;
    final isDesktop = screenWidth > 1024;
    
    // Responsive font sizes
    final regularFontSize = isDesktop ? 16.0 : isTablet ? 15.0 : 14.0;
    final emphasizedFontSize = isDesktop ? 18.0 : isTablet ? 17.0 : 16.0;
    final verticalPadding = isDesktop ? 10.0 : isTablet ? 9.0 : 8.0;
    
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Label text
          Expanded(
            flex: 3,
            child: Text(
              label,
              style: TextStyle(
                fontSize: isEmphasized ? emphasizedFontSize : regularFontSize,
                fontWeight: isEmphasized ? FontWeight.w600 : FontWeight.w400,
                color: AppColors.darkGrey,
              ),
            ),
          ),
          
          // Value text
          Expanded(
            flex: 2,
            child: Text(
              value,
              style: TextStyle(
                fontSize: isEmphasized ? emphasizedFontSize : regularFontSize,
                fontWeight: isEmphasized ? FontWeight.bold : FontWeight.w500,
                color: isEmphasized ? AppColors.successGreen : AppColors.darkGrey,
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}