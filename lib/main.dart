import 'package:clean_architecture/core/inject/inject.dart';
import 'package:clean_architecture/layers/presentation/ui/pages/car_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  Inject.init();
  runApp(
    MaterialApp(
      title: 'Clean Architecture',
      debugShowCheckedModeBanner: false,
      home: CarPage(),
    ),
  );
}