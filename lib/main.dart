import 'package:flutter/material.dart';

import 'package:designs_flutter_app/src/screens/headers_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs App',
      home: HeadersScreen(),
    );
  }
}