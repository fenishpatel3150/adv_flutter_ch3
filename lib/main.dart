import 'package:adv_flutter_ch3/chrome_screen/provider/chrome_provider.dart';
import 'package:adv_flutter_ch3/chrome_screen/view/Google_Screen.dart';
import 'package:adv_flutter_ch3/chrome_screen/view/chrome_screen.dart';
import 'package:adv_flutter_ch3/connectivity/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Chrome_provider(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/chrome',
        routes: {
          //   '/connectivity': (context) => Connectivity_Screen(),
          '/chrome': (context) => Google_Screen(),
        });
  }
}
