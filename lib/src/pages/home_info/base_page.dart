import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class BasePage extends StatelessWidget {
  BasePage(
      {Key? key,
      required this.image,
      required this.slide,
      required this.title,
      required this.text,
      required this.callback})
      : super(key: key);

  String image;
  String slide;
  String title;
  String text;
  VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 0, top: 100),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(image),
            const SizedBox(
              height: 20,
            ),
            Image.asset(slide),
            Text(title,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 25, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
            Text(text,
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                    fontSize: 18, color: const Color(0xff7e848d))),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  callback();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                child: const Text("Continuar", style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
