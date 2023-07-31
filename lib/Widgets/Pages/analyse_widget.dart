import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/navigationData.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/Pages/users_layout_widget.dart';

class AnalyseWidget extends StatelessWidget {
  const AnalyseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return // Other Data
        Row(
      children: [
        // Center Page Content
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.96,
            width: 620,
            color: ColorConstant.whiteColor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 46,
                      width: 155,
                      decoration: BoxDecoration(
                          color: ColorConstant.searchColor,
                          border: Border.all(color: ColorConstant.arrowColor),
                          borderRadius: BorderRadius.circular(14)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Last 30 Days',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: ColorConstant.arrowColor),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: ColorConstant.arrowColor,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: GridView.builder(
                    itemCount: 20,
                    padding: const EdgeInsetsDirectional.all(8),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 16.0,
                            mainAxisSpacing: 12.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: ColorConstant.whiteColor,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      ColorConstant.blueColor.withOpacity(0.30),
                                  offset: const Offset(1, 2.0),
                                  blurRadius: 2.0,
                                  spreadRadius: 0.0),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/icons/${navigationData[index]['icon']}',
                                scale: 0.6,
                              ),
                              Text('${navigationData[index]['count']}'),
                              Text(
                                '${navigationData[index]['title']}',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        // Right Users Content
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: 380,
            child: UsersLayout(),
          ),
        ),
      ],
    );
  }
}
