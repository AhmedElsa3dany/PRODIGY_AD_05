import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:qr/Widgets/Scan_Button.dart';
import 'package:qr/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor4,
      body: ListView(
        children: [
          LottieBuilder.asset('assests/Animation - 1725242458082.json'),
          ScanButton(),
        ],
      ),
    );
  }
}
