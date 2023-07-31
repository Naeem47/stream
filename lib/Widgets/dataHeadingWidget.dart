import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataHeadingWidget extends StatelessWidget {
  DataHeadingWidget({
    super.key,
    required this.height,
    required this.width,
    required this.headingText,
  });
  final width;
  final height;
  String? headingText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Column(
        children: [
          Text(
            headingText!,
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
