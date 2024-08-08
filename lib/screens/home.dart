import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/menuePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'menuePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            // big logo
            Padding(
              padding: const EdgeInsets.only(
                left: 100.0,
                right: 100.0,
                top: 120,
                bottom: 20,
              ),
              child: Image.asset('assets/cart.png'),
            ),

            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                'Welcome to our grocery shop!',
                textAlign: TextAlign.center,
                style: GoogleFonts.cairo(
                    fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),

          

            const SizedBox(height: 24),

            // get started button
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Menuepage();
                  },
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.yellow[400],
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
