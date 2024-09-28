import 'package:flutter/material.dart';
import 'package:qr/Utilies/App_Route.dart';

void main() {
  runApp(const Scanner_App());
}

class Scanner_App extends StatelessWidget {
  const Scanner_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Approuter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
