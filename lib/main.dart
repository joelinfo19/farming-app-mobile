
import 'package:farming_app/src/screens/client_screen.dart';
import 'package:farming_app/src/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      title: 'title',
      home: ClientScreen(),
    );
  }
}
