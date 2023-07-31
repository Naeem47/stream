import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/colors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key,required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 8,
                                                          horizontal: 50),
                                                      child: Container(
                                                        height: 40,
                                                        width: 295,
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .whiteColor,
                                                            border: Border.all(
                                                                width: 2,
                                                                color: ColorConstant
                                                                    .blueColor)),
                                                        child: TextFormField(
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            contentPadding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                        vertical:
                                                                            10,
                                                                        horizontal:
                                                                            10),
                                                            suffixIcon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color:
                                                                  ColorConstant
                                                                      .blueColor,
                                                            ),
                                                            hintText:
                                                                text,
                                                            hintStyle: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorConstant
                                                                        .arrowColor),
                                                          ),
                                                        ),
                                                      ),
                                                    );
  }
}
