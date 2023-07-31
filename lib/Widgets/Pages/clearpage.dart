
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/colors.dart';
import '../dialogbutton.dart';
import '../textfield_widget.dart';

class ClearPage extends StatefulWidget {
  const ClearPage({super.key});

  @override
  State<ClearPage> createState() => _ClearPageState();
}

class _ClearPageState extends State<ClearPage> {
    final List text = [
    "SN",
    "Admin",
    "Cateory",
    "Recharge/Back",
    "IdSerial",
    "Bonus item",
    "Day",
    "Date/Time",
    "Current Coin",
    "Record",
  ];
  final List text2 = [
    "01",
    "King of Kings",
    "Master Panel",
    "Recharge 500k",
    "578456",
    "Vip 1-super car",
    "3 Days",
    "14-Feb-1994 15:39 PM",
    "1548256",
    "Check",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180),
        child: AppBar(
          toolbarHeight: 350,
          backgroundColor: ColorConstant.whiteColor,
          elevation: 0,
          
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 280,
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                scrollable: true,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                actions: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.40, //
                                    width: MediaQuery.of(context).size.width *
                                        0.20,
                                    color: ColorConstant.whiteColor,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 53,
                                            width: double.infinity,
                                            color: ColorConstant.blueColor,
                                            child: Text(
                                              textAlign: TextAlign.center,
                                              "Clear Amount ",
                                              style: GoogleFonts.poppins(
                                                  color:
                                                      ColorConstant.whiteColor,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                                left: 10.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [

                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 40,
                                                      width: 280,
                                                      child: Stack(
                                                        children: [
                                                          GestureDetector(
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              width: 138,
                                                              height: 32,
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .whiteColor,
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .blueColor),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              24)),
                                                              child: Text(
                                                                'Specific',
                                                                style: TextStyle(
                                                                    color: ColorConstant
                                                                        .blueColor,
                                                                    letterSpacing:
                                                                        0.5,
                                                                    fontSize:
                                                                        11,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 120,
                                                            child:
                                                                Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  width: 138,
                                                                  height: 32,
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant
                                                                          .blueColor,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              24)),
                                                                  child: Text(
                                                                    'All clear',
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteColor,
                                                                        letterSpacing:
                                                                            0.5,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700),
                                                                  ),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                
                                               
                                                const TextFieldWidget(
                                                    text: 'ID :'),
                                                  const SizedBox(
                                                  height: 10,
                                                ),
                                                 const TextFieldWidget(
                                                    text: ' Clear amount'),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                
                                                
                                              ],
                                            ),
                                          ),
                                          const DialogButton(text: 'Add'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 138,
                            height: 32,
                            decoration: BoxDecoration(
                                color: ColorConstant.blueColor,
                                border:
                                    Border.all(color: ColorConstant.blueColor),
                                borderRadius: BorderRadius.circular(24)),
                            child: Text(
                              'Clear Amount ',
                              style: TextStyle(
                                  color: ColorConstant.whiteColor,
                                  letterSpacing: 0.5,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Row(
                children: [
                  SizedBox(
                    height: 200,
                    width: 600,
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 280,
                          height: 145,
                          decoration: BoxDecoration(
                              color: ColorConstant.whiteColor,
                              border:
                                  Border.all(color: ColorConstant.blueColor),
                              borderRadius: BorderRadius.circular(24)),
                          child:Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                              children: [
                                SizedBox(height: 30,width: 50,child: Image.asset("assets/icons/ruby.png"),),
                                Text(
                                  '785000000',
                                  style: GoogleFonts.poppins(
                                      color: ColorConstant.blueColor,
                                      
                                      fontSize: 35,
                                      fontWeight: FontWeight.w500),
                                ),
                                 Text(
                                  'Avalaible ',
                                  style: GoogleFonts.poppins(
                                      color: ColorConstant.blueColor,
                                      fontSize: 35,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                        ),
                        Positioned(
                          left: 240,
                          child: Container(
                            alignment: Alignment.center,
                            width: 280,
                            height: 145,
                            decoration: BoxDecoration(
                                color: ColorConstant.blueColor,
                                borderRadius: BorderRadius.circular(24)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(height: 30,width: 50,child: Image.asset("assets/icons/ruby.png"),),
                                Text(
                                  '18400000',
                                  style: GoogleFonts.poppins(
                                      color: ColorConstant.whiteColor,
                                      
                                      fontSize: 35,
                                      fontWeight: FontWeight.w500),
                                ),
                                 Text(
                                  'Recharge ',
                                  style: GoogleFonts.poppins(
                                      color: ColorConstant.whiteColor,
                                      fontSize: 35,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
                // Text("HELLO"),
                SizedBox(width: MediaQuery.of(context).size.width*0.10,),
                Container(
                  height: 45,
                  width: 225,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide.none),
                        fillColor: ColorConstant.searchColor,
                        filled: true,
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search store'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorConstant.whiteColor
                    // color: ColorConstant.whiteColor,
                    ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      text.length,
                      (index) => Text(
                            text[index],
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorConstant.whiteColor
                    // color: ColorConstant.whiteColor,
                    ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          // flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                              text2.length,
                              (index) => Text(
                                text2[index],
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              growable: true,
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
