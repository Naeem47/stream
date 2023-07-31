import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';

class CardWidget extends StatelessWidget {
  CardWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.qty,
      required this.text});
  final width;
  final height;
  String? qty;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        alignment: Alignment.centerLeft,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorConstant.searchColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                qty!,
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              Text(
                text!,
                style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.arrowColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
