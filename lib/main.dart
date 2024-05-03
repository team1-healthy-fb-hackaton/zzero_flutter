import 'package:flutter/material.dart';
import 'package:zzero/category_page/category_page.dart';
import 'home_page/main_page.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoryPage(),
    );
  }
}

