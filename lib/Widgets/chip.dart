import 'package:flutter/material.dart';
import 'package:singleclub/Utils/colors.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Chip(
        
        backgroundColor: ColorConstant.whiteColor,
        shape: BeveledRectangleBorder(),
        label: Text(text),
        side: BorderSide(color: ColorConstant.blueColor));
  }
}
