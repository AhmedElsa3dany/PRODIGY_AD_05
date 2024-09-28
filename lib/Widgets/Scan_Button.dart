import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr/Views/Qrcode_Scanner.dart';
import 'package:qr/constants.dart';
import 'package:typewritertext/typewritertext.dart';
import 'package:url_launcher/url_launcher.dart';

class ScanButton extends StatefulWidget {
  const ScanButton({super.key});

  @override
  State<ScanButton> createState() => _ScanButtonState();
}

class _ScanButtonState extends State<ScanButton> {
  String? _result;

  void setResult(String result) {
    setState(() => _result = result);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kColor3,
                border: Border.all(
                  color: const Color.fromARGB(255, 1, 122, 11),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  FontAwesomeIcons.link,
                  size: 20,
                  color: kColor1,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: _result != null
                      ? GestureDetector(
                          onTap: () async {
                            final Uri url = Uri.parse(_result!);
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              // You can show an error message if the URL can't be launched
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Could not launch URL')),
                              );
                            }
                          },
                          child: TypeWriter.text(
                            _result!,
                            style: GoogleFonts.aboreto(
                              textStyle: const TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            duration: const Duration(milliseconds: 200),
                          ),
                        )
                      : const Text(
                          'No result',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(285, 90),
              backgroundColor: kColor3,
              shadowColor: const Color.fromARGB(255, 1, 122, 11),
              elevation: 15,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: Text(
              'Scan QR code',
              style: GoogleFonts.lumanosimo(
                textStyle: const TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 1, 40, 4),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => QrCodeScanner(setResult: setResult),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
