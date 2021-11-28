import 'package:adaptive_design/ui/screens/home/home_page.dart';
import 'package:flutter/material.dart';

class AdaptiveApp extends StatelessWidget {
  const AdaptiveApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
