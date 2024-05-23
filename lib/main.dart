import 'package:flutter/material.dart';
import 'principal.dart';
import 'package:empresa_mapx/Mapa1.dart';
import 'package:empresa_mapx/Mapa2.dart';
import 'package:empresa_mapx/Mapa3.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}

