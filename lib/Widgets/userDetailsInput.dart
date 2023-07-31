import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataDetailsWidget extends StatelessWidget {
  DataDetailsWidget({
    super.key,
    required this.height,
    required this.width,
    required this.detailsText,
  });
  final width;
  final height;
  String? detailsText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Column(
        children: [
          Image.asset(detailsText!,height: 35,width: 35,fit: BoxFit.fill,)
        ],
      ),
    );
  }
}
