import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:singleclub/Screens/homepgae.dart';
import 'package:singleclub/provider/togglepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => Myprovider(),)],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePageView(),
      ),
    );
  }
}

