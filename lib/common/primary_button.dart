import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';

/// Reusable primary button widget with consistent styling
/// Used for main call-to-action buttons throughout the app
/// Now responsive for different screen sizes
class PrimaryButton extends StatelessWidget {
  /// Button text label
  final String text;
  
  /// Callback function when button is pressed
  final VoidCallback? onPressed;
  
  /// Whether the button should take full width
  final bool isFullWidth;
  
  /// Optional custom background color
  final Color? backgroundColor;

  const PrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isFullWidth = true,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;
    final isDesktop = screenWidth > 1024;
    
    // Responsive sizing
    final buttonHeight = isDesktop ? 64.0 : isTablet ? 60.0 : 56.0;
    final fontSize = isDesktop ? 18.0 : isTablet ? 17.0 : 16.0;
    final borderRadius = isDesktop ? 16.0 : isTablet ? 14.0 : 12.0;
    
    return SizedBox(
      width: isFullWidth ? double.infinity : null,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.successGreen,
          foregroundColor: AppColors.white,
          elevation: 2,
          shadowColor: Colors.black.withValues(alpha: 0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}