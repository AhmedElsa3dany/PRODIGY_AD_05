import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr/constants.dart';

class CustomButtonBox extends StatelessWidget {
  const CustomButtonBox({super.key, required this.text, required this.ontap});
  final String text;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 200,
        width: 250,
        decoration: BoxDecoration(
          border: Border.all(color: kColor1),
          color: kColor3,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assests/2313147.png',
              height: 100,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              text,
              style: GoogleFonts.lumanosimo(
                textStyle: const TextStyle(
                  letterSpacing: 5,
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
