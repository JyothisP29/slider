import 'package:flutter/material.dart';
import 'package:slider/FirstPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: 'DMSans',
      ),
      debugShowCheckedModeBanner: false,
      title: _title,
      home: const FirstOne(),
    );
  }
}
