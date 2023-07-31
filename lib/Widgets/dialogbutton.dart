import 'package:flutter/material.dart';

import '../Utils/colors.dart';

class DialogButton extends StatelessWidget {
  const DialogButton({super.key,required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
                                alignment: Alignment.center,
                                width: 105,
                                height: 32,
                                decoration: BoxDecoration(
                                    color: ColorConstant.blueColor,
                                    border: Border.all(
                                        color: ColorConstant.blueColor),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  text,
                                  style: TextStyle(
                                      color: ColorConstant.whiteColor,
                                      letterSpacing: 0.5,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                              );
  }
}