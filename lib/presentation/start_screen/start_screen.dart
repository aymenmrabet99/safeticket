import 'package:flutter/material.dart';
import '../../core/app_export.dart'; // Ensure this imports ImageConstant (if it exists)

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onErrorContainer,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            vertical: 36.h,
          ), // Use h for responsive padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                // Replace CustomImageView with Image.asset
                'assets/images/logo.png', // Replace with your actual image path
                height: 300.h, // Use h for responsive height
                width: 300.h, // Use h for responsive width
              ),
              SizedBox(height: 46.h), // Use h for responsive spacing
            ],
          ),
        ),
      ),
    );
  }
}
