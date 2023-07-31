import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:singleclub/Local_variables/navigationData.dart';
import 'package:singleclub/Local_variables/variables.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/provider/togglepage.dart';

class SideNavigationBar extends StatefulWidget {
  const SideNavigationBar({super.key});

  @override
  State<SideNavigationBar> createState() => _SideNavigationBarState();
}

bool istapped = false;

class _SideNavigationBarState extends State<SideNavigationBar> {
  List<Color> itemColors =
      List.generate(navigationData.length, (index) => Colors.white);
  List<Color> contentColors =
      List.generate(navigationData.length, (index) => Color(0xff2C50ED));
  int? lastSelectedIndex;
  @override
  Widget build(BuildContext context) {
    return Consumer<Myprovider>(
      builder: (context, value, child) => Column(
        children: [
          // icon & title
          Container(
            width: 295,
            height: 65,
            color: ColorConstant.blueColor,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                    'assets/images/social.png',
                  ))),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Single Club',
                  style: GoogleFonts.brunoAceSc(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: ColorConstant.whiteColor),
                ),
              ],
            ),
          ),
          // profile images
          Stack(
            children: [
              Container(
                height: 195,
                width: 300,
                // color: Colors.yellow,
              ),
              Positioned(
                left: 2,
                child: Container(
                  height: 138,
                  width: 296.5,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/Screenshot_342 1.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                left: 93,
                top: 81.5,
                child: Container(
                  height: 113,
                  width: 114,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/user.png'),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
          //  User Name
          Text(
            'King Of King’s',
            style:
                GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Text(
            'Master Panel',
            style:
                GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          // List of Menu
          Expanded(
              child: SizedBox(
            width: 231,
            child: ListView.builder(
              itemCount: navigationData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      value.updateIndex(index);
                      setState(() {
                        ind = index;
                        itemColors[index] = ColorConstant.blueColor;
                        contentColors[index] = ColorConstant.whiteColor;

                        if (lastSelectedIndex != null &&
                            lastSelectedIndex != index) {
                          itemColors[lastSelectedIndex!] =
                              ColorConstant.whiteColor;
                          contentColors[lastSelectedIndex!] =
                              ColorConstant.blueColor;
                        }
                        lastSelectedIndex = index;
                      });

                      print(navigationData[index]['title']);
                    },
                    child: Container(
                        height: 50,
                        width: 231,
                        decoration: BoxDecoration(
                            color: itemColors[index],
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: ColorConstant.blueColor))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                                'assets/icons/${navigationData[index]['icon']}'),
                            Text(
                              '${navigationData[index]['title']}',
                              style: GoogleFonts.poppins(
                                  color: contentColors[index],
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                            ),
                            Icon(Icons.arrow_forward_ios_rounded,
                                color: contentColors[index])
                          ],
                        )),
                  ),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
