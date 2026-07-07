import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer(const Duration(seconds: 2), () {
      if (mounted) {
        context.go('/welcome');
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.two_wheeler,
                size: 90,
                color: Colors.green,
              ),

              SizedBox(height: 24),

              Text(
                'BODALINK',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 2,
                ),
              ),

              SizedBox(height: 12),

              Text(
                'Ride Smarter',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),

              SizedBox(height: 48),

              SizedBox(
                width: 32,
                height: 32,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}