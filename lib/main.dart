import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uitocode/views/chatty_pages.dart';
import 'package:uitocode/views/shoes_pages.dart';

void main() {
  // untuk merubah warna status bar
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      // home: ChattyPages(),
      routes: {
        '/': (context) => ChattyPages(),
        '/shoes': (context) => ShoesPages(),
      },
    );
  }
}
