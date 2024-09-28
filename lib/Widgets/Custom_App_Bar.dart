import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      decoration: BoxDecoration(
          color: kColor2, borderRadius: BorderRadius.circular(20)),
      child: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "QR SCAN",
            style: GoogleFonts.dancingScript(
              textStyle: const TextStyle(
                color: kColor1,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
