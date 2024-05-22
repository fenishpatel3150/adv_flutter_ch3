import 'package:adv_flutter_ch3/connectivity/view/home_page.dart';
import 'package:flutter/material.dart';


void main()
{
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Connectivity_Screen(),
      }
    );
  }
}
