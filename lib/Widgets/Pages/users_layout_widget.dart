import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Local_variables/users_data.dart';
import 'package:singleclub/Utils/colors.dart';

class UsersLayout extends StatelessWidget {
  const UsersLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Top- Recharge',
                style: GoogleFonts.montserrat(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: usersData.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 350,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: ColorConstant.searchColor.withOpacity(0.60)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/${usersData[index]['img']}'))),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  ' ${usersData[index]['name']}',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  '  ${usersData[index]['phone']}',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black.withOpacity(0.50)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Order: ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                Text(
                                  '${usersData[index]['order']}',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Income: ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                Text(
                                  '${usersData[index]['income']}',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
