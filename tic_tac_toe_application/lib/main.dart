import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tic_tac_toe_application/screens/home_page.dart';
import 'package:tic_tac_toe_application/screens/sign_up_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUpPage(),
      debugShowCheckedModeBanner: false,
      //HomePage(),
    );
  }
}
