import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr/Widgets/Custom_App_Bar.dart';
import 'package:qr/Widgets/Custom_Button_Box.dart';
import 'package:qr/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor4,
      body: Column(
        children: [
          const CustomAppBar(),
          const SizedBox(
            height: 180,
          ),
          CustomButtonBox(
            text: 'SCAN',
            ontap: () {
              GoRouter.of(context).push('/scanview');
            },
          ),
        ],
      ),
    );
  }
}
