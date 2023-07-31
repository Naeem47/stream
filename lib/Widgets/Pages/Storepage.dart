import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singleclub/Utils/colors.dart';
import 'package:singleclub/Widgets/dialogbutton.dart';
import 'package:singleclub/Widgets/textfield_widget.dart';
import 'package:web_pagination/web_pagination.dart';

class StorPage extends StatelessWidget {
  StorPage({super.key});

  final List text = [
    "SL",
    "Product",
    "Name",
    "Category",
    "7Day",
    "Price",
    "Admin Name",
    "Category",
    "Date/Time",
    "Action",
  ];
  final List text2 = [
    "01",
    "image",
    "Contenet here\nmaking",
    "Entry",
    "15/30 days",
    "60k/110k",
    "King of Kings",
    "Master Point",
    "14-Feb-2023\n15:39",
    // { Icon(Icons.edit),}
    //  Icon(Icons.delete),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          toolbarHeight: 350,
          backgroundColor: ColorConstant.whiteColor,
          elevation: 0,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Store List",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                "286 items are already in store",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
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
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.55, //
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      color: ColorConstant.whiteColor,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 53,
                                            width: double.infinity,
                                            color: ColorConstant.blueColor,
                                            child: Text(
                                              textAlign: TextAlign.center,
                                              "Send Gift",
                                              style: GoogleFonts.poppins(
                                                  color:
                                                      ColorConstant.whiteColor,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          const TextFieldWidget(text: 'ID :'),
                                          const TextFieldWidget(
                                              text: 'Select Category'),
                                          const TextFieldWidget(
                                              text: 'Select Product'),
                                          const TextFieldWidget(text: 'Expire'),

                                          const SizedBox(height: 10,),
                                          const DialogButton(text: 'Send')
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
                                color: ColorConstant.whiteColor,
                                border:
                                    Border.all(color: ColorConstant.blueColor),
                                borderRadius: BorderRadius.circular(24)),
                            child: Text(
                              'Send Gieft',
                              style: TextStyle(
                                  color: ColorConstant.blueColor,
                                  letterSpacing: 0.5,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 120,
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  scrollable: true,
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  actions: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.65, //
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.20,
                                        color: ColorConstant.whiteColor,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 53,
                                              width: double.infinity,
                                              color: ColorConstant.blueColor,
                                              child: Text(
                                                textAlign: TextAlign.center,
                                                "Add Effect",
                                                style: GoogleFonts.poppins(
                                                    color: ColorConstant
                                                        .whiteColor,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            const TextFieldWidget(
                                                text: 'Select Category'),
                                            const TextFieldWidget(text: 'Name :'),
                                            const TextFieldWidget(text: 'Day :'),
                                            const TextFieldWidget(text: 'Price :'),
                                            const TextFieldWidget(text: 'Day :'),
                                            const TextFieldWidget(text: 'Price :'),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                              height: 100,
                                              width: 140,
                                              color: ColorConstant.whiteColor,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    textAlign: TextAlign.center,
                                                    "Upload File",
                                                    style: GoogleFonts.poppins(
                                                        color: ColorConstant
                                                            .blueColor,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                   SizedBox(
                                                    height: 50,
                                                    width: 50,
                                                    child: Image.asset("assets/icons/cloudupload.png",fit: BoxFit.contain,) ,),

                                                  Text(
                                                textAlign: TextAlign.center,
                                                "SVG/WEP",
                                                style: GoogleFonts.poppins(
                                                    color: ColorConstant
                                                        .blueColor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                                ],
                                              ),
                                            ),
                                             const SizedBox(height: 10,),
                                          const DialogButton(text: 'Add')
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
                                  borderRadius: BorderRadius.circular(24)),
                              child: Text(
                                'Add Effect',
                                style: TextStyle(
                                    color: ColorConstant.whiteColor,
                                    letterSpacing: 0.5,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700),
                              ),
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.edit),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.delete),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
             
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.75, //
                      width: MediaQuery.of(context).size.width * 0.20,
                      color: ColorConstant.whiteColor,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Store",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Fream",
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Entrance",
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Effect",
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Chat Bubbels",
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Background",
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "VIP",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "VIP Medal",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "VIP Bullet\nScreen",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "Profile Picture\nDecoration",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Entrance\nEffect",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Video Call\nFrame",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Chat Bubbels",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "SVIP",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "VIP Medal",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "VIP Bullet\nScreen",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "Profile Picture\nDecoration",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Entrance\nEffect",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Video Call\nFrame",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Chat Bubbels",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Guardian",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Ranking Forward",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Distinguished Logo",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Entrey Special effects",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Eclusive bubbels",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            
            Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // pagination
                            WebPaginationWidget(
                              actualPage: 2,
                              countToDisplay: 3,
                              totalPages: 3,
                              buttonColor: ColorConstant.blueColor,
                              buttonTextColor: Colors.white,
                              onPageChange: (page) {
                                // setState(() {
                                //   actualPage = page;
                                // });
                              },
                            ),
                          ],
                        ),
            ],
          ),
        ),
      ),
    );
  }
}
