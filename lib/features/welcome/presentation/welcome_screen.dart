import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),

              Center(
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(.12),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.two_wheeler_rounded,
                    size: 65,
                    color: AppColors.primary,
                  ),
                ),
              ),

              const SizedBox(height: 50),

              const Text(
                "Move smarter.",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w800,
                  color: AppColors.textPrimary,
                  height: 1.1,
                ),
              ),

              const Text(
                "Ride with confidence.",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w800,
                  color: AppColors.primary,
                  height: 1.1,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Book trusted boda rides in seconds. Fast pickups, transparent fares and reliable drivers—all in one app.",
                style: TextStyle(
                  fontSize: 17,
                  color: AppColors.textSecondary,
                  height: 1.6,
                ),
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton(
                  onPressed: () => context.go('/login'),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                height: 58,
                child: OutlinedButton(
                  onPressed: () => context.go('/register'),
                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 28),

              Center(
                child: Text(
                  "By continuing you agree to our Terms of Service and Privacy Policy.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}