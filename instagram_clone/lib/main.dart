import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/home/acc_switch.dart';
import 'package:instagram_clone/pages/bottom_navbar/bottom_nav.dart';
import 'package:instagram_clone/pages/login/login_page.dart';

void main() {
       WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Logins(),
      debugShowCheckedModeBanner: false,
    );
  }
}