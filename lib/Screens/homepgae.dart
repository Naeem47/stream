import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icon.dart';
import 'package:provider/provider.dart';

import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/Pages/Rechargepage.dart';
import 'package:singleclub/Widgets/Pages/Stickerview.dart';
import 'package:singleclub/Widgets/Pages/Storepage.dart';
import 'package:singleclub/Widgets/Pages/analyse_widget.dart';
import 'package:singleclub/Widgets/Pages/bannerpage.dart';
import 'package:singleclub/Widgets/Pages/clearpage.dart';
import 'package:singleclub/Widgets/side_navigation_bar.dart';
import 'package:singleclub/Widgets/user_widget.dart';
import 'package:singleclub/provider/togglepage.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteColor,
      body: Consumer<Myprovider>(
        builder: (context, value, child) => Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // Left Navigation Bar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: 300,
                    color: ColorConstant.searchColor,
                    child: const SideNavigationBar(),
                  ),
                ),
      
                // App Bar
                Container(
                  alignment: Alignment.topCenter,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.76,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.76,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 45,
                                  width: 225,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            borderSide: BorderSide.none),
                                        fillColor: ColorConstant.searchColor,
                                        filled: true,
                                        prefixIcon: Icon(Icons.search),
                                        hintText: 'Search or type'),
                                  ),
                                ),
                                Text(
                                  ' (${DateFormat('hh:mm').format(selectedDate)})  ${DateFormat('EEEE').format(selectedDate)} ${DateFormat(' dd/MM/yyyy').format(selectedDate)}',
                                  style: GoogleFonts.beVietnamPro(
                                      fontSize: 12,
                                      letterSpacing: 1,
                                      color: ColorConstant.blueColor,
                                      fontWeight: FontWeight.w400),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6),
                                        child: Container(
                                          width: 230,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              LineIcon(
                                                Icons.notifications,
                                                color: ColorConstant.blueColor,
                                                size: 32,
                                              ),
                                              LineIcon(
                                                Icons.email,
                                                color: ColorConstant.blueColor,
                                                size: 32,
                                              ),
                                              LineIcon.whatSApp(
                                                color: ColorConstant.blueColor,
                                                size: 32,
                                              ),
                                              LineIcon(
                                                Icons.calendar_month,
                                                color: ColorConstant.blueColor,
                                                size: 32,
                                              ),
                                              LineIcon(
                                                Icons.settings,
                                                color: ColorConstant.blueColor,
                                                size: 32,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // profile select
                                      const SizedBox(width: 50),
                                      Container(
                                        width: 220,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/user.png'))),
                                            ),
                                            Text(
                                              "King of King’s",
                                              style: GoogleFonts.beVietnamPro(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  color: ColorConstant.blueColor),
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        // app Bar End
      
                        // Data from Menu
      
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width * 0.76,
                          child: StickerView(),
                          // child: _getWidgetByIndex(ind),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
Widget _getWidgetByIndex(int index) {
    switch (index) {
      case 0:
        return const AnalyseWidget();
      case 1:
        return const UserWidget();
      // case 2:
      //   return WidgetC();
      default:
        return  StorPage();
    }
  }
