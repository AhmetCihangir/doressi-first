// ignore_for_file: prefer_const_constructors

import 'package:deneme/colors/colors.dart';
import 'package:deneme/components/page1/page1.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBgColor,
        body: Page1(),
      ),
    ),
  );
}


